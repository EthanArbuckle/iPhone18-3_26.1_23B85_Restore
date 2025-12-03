@interface STMapViewport
- (STMapViewport)initWithCoder:(id)coder;
- (id)_aceContextObjectValue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STMapViewport

- (STMapViewport)initWithCoder:(id)coder
{
  v20[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = STMapViewport;
  v5 = [(STSiriModelObject *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"_eastLongitude"];
    v5->_eastLongitude = v6;
    [coderCopy decodeDoubleForKey:@"_westLongitude"];
    v5->_westLongitude = v7;
    [coderCopy decodeDoubleForKey:@"_northLatitude"];
    v5->_northLatitude = v8;
    [coderCopy decodeDoubleForKey:@"_southLatitude"];
    v5->_southLatitude = v9;
    [coderCopy decodeDoubleForKey:@"_timeSinceViewportChanged"];
    v5->_timeSinceViewportChanged = v10;
    [coderCopy decodeDoubleForKey:@"_timeSinceViewportEnteredForeground"];
    v5->_timeSinceViewportEnteredForeground = v11;
    v12 = MEMORY[0x277CBEB98];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"_viewportVertices"];
    viewportVertices = v5->_viewportVertices;
    v5->_viewportVertices = v15;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STMapViewport;
  coderCopy = coder;
  [(STSiriModelObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeDouble:@"_eastLongitude" forKey:{self->_eastLongitude, v5.receiver, v5.super_class}];
  [coderCopy encodeDouble:@"_westLongitude" forKey:self->_westLongitude];
  [coderCopy encodeDouble:@"_northLatitude" forKey:self->_northLatitude];
  [coderCopy encodeDouble:@"_southLatitude" forKey:self->_southLatitude];
  [coderCopy encodeDouble:@"_timeSinceViewportChanged" forKey:self->_timeSinceViewportChanged];
  [coderCopy encodeDouble:@"_timeSinceViewportEnteredForeground" forKey:self->_timeSinceViewportEnteredForeground];
  [coderCopy encodeObject:self->_viewportVertices forKey:@"_viewportVertices"];
}

- (id)_aceContextObjectValue
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D474D0]);
  [v3 setNorthLatitude:self->_northLatitude];
  [v3 setSouthLatitude:self->_southLatitude];
  [v3 setEastLongitude:self->_eastLongitude];
  [v3 setWestLongitude:self->_westLongitude];
  [v3 setTimeInSecondsSinceViewportChanged:self->_timeSinceViewportChanged];
  [v3 setTimeInSecondsSinceViewportEnteredForeground:self->_timeSinceViewportEnteredForeground];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_viewportVertices, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_viewportVertices;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = objc_alloc_init(MEMORY[0x277D474D8]);
        [v10 latitude];
        [v11 setLatitude:?];
        [v10 longitude];
        [v11 setLongitude:?];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [v3 setVertices:v4];
  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

@end