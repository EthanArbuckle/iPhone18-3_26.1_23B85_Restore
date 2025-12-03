@interface PPSHistogramRequest
- (PPSHistogramRequest)initWithCoder:(id)coder;
- (PPSHistogramRequest)initWithDimensions:(id)dimensions predicate:(id)predicate timeFilter:(id)filter;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPSHistogramRequest

- (PPSHistogramRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = PPSHistogramRequest;
  v5 = [(PPSDataRequest *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"dimensions"];
    dimensions = v5->_dimensions;
    v5->_dimensions = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PPSHistogramRequest;
  coderCopy = coder;
  [(PPSDataRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_dimensions forKey:{@"dimensions", v5.receiver, v5.super_class}];
}

- (PPSHistogramRequest)initWithDimensions:(id)dimensions predicate:(id)predicate timeFilter:(id)filter
{
  v29 = *MEMORY[0x277D85DE8];
  dimensionsCopy = dimensions;
  predicateCopy = predicate;
  filterCopy = filter;
  v12 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(dimensionsCopy, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = dimensionsCopy;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      v17 = 0;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        metricName = [*(*(&v24 + 1) + 8 * v17) metricName];
        [v12 addObject:metricName];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  v19 = [v12 copy];
  v23.receiver = self;
  v23.super_class = PPSHistogramRequest;
  v20 = [(PPSDataRequest *)&v23 initWithRequestType:1 metrics:v19 predicate:predicateCopy timeFilter:filterCopy];

  if (v20)
  {
    objc_storeStrong(&v20->_dimensions, dimensions);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)description
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  requestType = [(PPSDataRequest *)self requestType];
  metrics = [(PPSDataRequest *)self metrics];
  predicate = [(PPSDataRequest *)self predicate];
  timeFilter = [(PPSDataRequest *)self timeFilter];
  v9 = [v3 stringWithFormat:@"<%@: %p { type: %ld, metrics: %@, predicate: %@, timeFilter: %@ ", v4, self, requestType, metrics, predicate, timeFilter];

  dimensions = self->_dimensions;
  if (dimensions)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = dimensions;
    v33 = [(NSArray *)obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v33)
    {
      v32 = *v41;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v41 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v40 + 1) + 8 * i);
          edges = [v12 edges];
          v14 = [edges count];

          if (v14)
          {
            v34 = i;
            [v9 appendString:@"edges:["];
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            edges2 = [v12 edges];
            v16 = [edges2 countByEnumeratingWithState:&v36 objects:v44 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = 0;
              v19 = *v37;
              do
              {
                v20 = 0;
                v35 = v18;
                v21 = v18 + 1;
                do
                {
                  if (*v37 != v19)
                  {
                    objc_enumerationMutation(edges2);
                  }

                  [*(*(&v36 + 1) + 8 * v20) doubleValue];
                  [v9 appendFormat:@"%f", v22];
                  edges3 = [v12 edges];
                  v24 = [edges3 count];

                  if (v21 != v24)
                  {
                    [v9 appendString:{@", "}];
                  }

                  ++v20;
                  ++v21;
                }

                while (v17 != v20);
                v18 = v35 + v17;
                v17 = [edges2 countByEnumeratingWithState:&v36 objects:v44 count:16];
              }

              while (v17);
            }

            [v9 appendString:@"]"];
            i = v34;
          }

          else
          {
            v25 = [v12 size];
            [v12 range];
            v27 = v26;
            [v12 range];
            [v9 appendFormat:@"binCount:%lu minRange:%f maxRange:%f", v25, v27, v28];
          }
        }

        v33 = [(NSArray *)obj countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v33);
    }
  }

  [v9 appendString:@" }>"];
  v29 = *MEMORY[0x277D85DE8];

  return v9;
}

@end