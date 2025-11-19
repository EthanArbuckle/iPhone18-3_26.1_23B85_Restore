@interface MCDrawableTouchInput
- (MCDrawableTouchInput)initWithTouchPoint:(CGPoint)a3 radius:(double)a4 timestamp:(double)a5 inflectionPoint:(BOOL)a6 touchHistory:(const void *)a7;
- (RefPtr<TI::Favonius::CMTouchHistory>)touchHistory;
- (id)copyWithZone:(_NSZone *)a3;
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
  v4 = [MEMORY[0x277CCAB68] string];
  [v4 appendString:@"{"];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(MCDrawableTouchInput *)self nearbyKeys];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ((v9 & 1) == 0)
        {
          [v4 appendString:{@", "}];
        }

        [v4 appendFormat:@"%c", objc_msgSend(v11, "character")];
        v9 = 0;
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
      v9 = 0;
    }

    while (v7);
  }

  [v4 appendString:@"}"];
  v12 = [v3 stringByAppendingFormat:@", nearbyKeys=%@", v4];

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = MCDrawableTouchInput;
  v4 = [(MCTouchInput *)&v9 copyWithZone:a3];
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

- (MCDrawableTouchInput)initWithTouchPoint:(CGPoint)a3 radius:(double)a4 timestamp:(double)a5 inflectionPoint:(BOOL)a6 touchHistory:(const void *)a7
{
  v19.receiver = self;
  v19.super_class = MCDrawableTouchInput;
  v9 = [(MCTouchInput *)&v19 initWithTouchPoint:a3.x radius:a3.y timestamp:a4, a5];
  v10 = v9;
  if (v9)
  {
    v9->_isInflectionPoint = a6;
    v11 = *a7;
    if (*a7)
    {
      atomic_fetch_add((v11 + 8), 1u);
    }

    m_ptr = v9->_touchHistory.m_ptr;
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

    v14 = *a7;
    if (v14)
    {
      v15 = (*(*v14 + 64))(v14);
      v16 = [objc_opt_class() maxNearbyKeysCountDefault];
      v17 = asMCNearbyKeys(v15, v16);
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