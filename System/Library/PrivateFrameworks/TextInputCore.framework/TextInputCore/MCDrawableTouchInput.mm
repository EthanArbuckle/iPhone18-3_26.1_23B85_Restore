@interface MCDrawableTouchInput
- (MCDrawableTouchInput)initWithTouchPoint:(CGPoint)point radius:(double)radius timestamp:(double)timestamp inflectionPoint:(BOOL)inflectionPoint touchHistory:(const void *)history;
- (RefPtr<TI::Favonius::CMTouchHistory>)touchHistory;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MCDrawableTouchInput

- (RefPtr<TI::Favonius::CMTouchHistory>)touchHistory
{
  m_ptr = self->_touchHistory.m_ptr;
  *v2 = m_ptr;
  if (m_ptr)
  {
    atomic_fetch_add(m_ptr + 2, 1u);
  }

  return self;
}

- (id)description
{
  v21 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = MCDrawableTouchInput;
  v3 = [(MCTouchInput *)&v19 description];
  string = [MEMORY[0x277CCAB68] string];
  [string appendString:@"{"];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  nearbyKeys = [(MCDrawableTouchInput *)self nearbyKeys];
  v6 = [nearbyKeys countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = 1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(nearbyKeys);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ((v9 & 1) == 0)
        {
          [string appendString:{@", "}];
        }

        [string appendFormat:@"%c", objc_msgSend(v11, "character")];
        v9 = 0;
      }

      v7 = [nearbyKeys countByEnumeratingWithState:&v15 objects:v20 count:16];
      v9 = 0;
    }

    while (v7);
  }

  [string appendString:@"}"];
  v12 = [v3 stringByAppendingFormat:@", nearbyKeys=%@", string];

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = MCDrawableTouchInput;
  v4 = [(MCTouchInput *)&v9 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    *(v4 + 64) = self->_isInflectionPoint;
    v6 = v4[10];
    v5[10] = 0;
    if (v6)
    {
      v7 = atomic_load(v6 + 2);
      if (v7 == 1)
      {
        (*(*v6 + 8))(v6);
      }

      else
      {
        atomic_fetch_add(v6 + 2, 0xFFFFFFFF);
      }
    }

    objc_storeStrong(v5 + 9, self->_nearbyKeys);
  }

  return v5;
}

- (MCDrawableTouchInput)initWithTouchPoint:(CGPoint)point radius:(double)radius timestamp:(double)timestamp inflectionPoint:(BOOL)inflectionPoint touchHistory:(const void *)history
{
  v19.receiver = self;
  v19.super_class = MCDrawableTouchInput;
  timestamp = [(MCTouchInput *)&v19 initWithTouchPoint:point.x radius:point.y timestamp:radius, timestamp];
  v10 = timestamp;
  if (timestamp)
  {
    timestamp->_isInflectionPoint = inflectionPoint;
    v11 = *history;
    if (*history)
    {
      atomic_fetch_add((v11 + 8), 1u);
    }

    m_ptr = timestamp->_touchHistory.m_ptr;
    v10->_touchHistory.m_ptr = v11;
    if (m_ptr)
    {
      v13 = atomic_load(m_ptr + 2);
      if (v13 == 1)
      {
        (*(*m_ptr + 8))(m_ptr);
      }

      else
      {
        atomic_fetch_add(m_ptr + 2, 0xFFFFFFFF);
      }
    }

    v14 = *history;
    if (v14)
    {
      v15 = (*(*v14 + 64))(v14);
      maxNearbyKeysCountDefault = [objc_opt_class() maxNearbyKeysCountDefault];
      v17 = asMCNearbyKeys(v15, maxNearbyKeysCountDefault);
    }

    else
    {
      v17 = 0;
    }

    objc_storeStrong(&v10->_nearbyKeys, v17);
    if (v14)
    {
    }
  }

  return v10;
}

@end