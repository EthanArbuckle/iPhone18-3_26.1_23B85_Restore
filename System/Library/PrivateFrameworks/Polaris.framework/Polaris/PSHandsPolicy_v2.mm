@interface PSHandsPolicy_v2
- (id)evaluatePolicy:(id)policy;
@end

@implementation PSHandsPolicy_v2

- (id)evaluatePolicy:(id)policy
{
  v4 = objc_alloc_init(NSMutableDictionary);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = self->_graphToDesiredStride;
  v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [[PSSGGraphID alloc] initWithName:v9 session:self->_sessionName];
        v11 = objc_alloc_init(PSGraphState_v2);
        [(PSGraphState_v2 *)v11 setSessionName:self->_sessionName];
        [(PSGraphState_v2 *)v11 setGraphName:v9];
        v12 = [(NSMutableDictionary *)self->_graphToDesiredStride objectForKeyedSubscript:v9];
        [(PSGraphState_v2 *)v11 setTargetStride:v12];

        [(PSGraphState_v2 *)v11 setLowerBoundStride:0];
        [(PSGraphState_v2 *)v11 setUpperBoundStride:0];
        [v4 setObject:v11 forKey:v10];
      }

      v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v4;
}

@end