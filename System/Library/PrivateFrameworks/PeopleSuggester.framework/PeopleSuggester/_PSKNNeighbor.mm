@interface _PSKNNeighbor
- (_PSKNNeighbor)initWithNodeData:(id)data distance:(double)distance;
@end

@implementation _PSKNNeighbor

- (_PSKNNeighbor)initWithNodeData:(id)data distance:(double)distance
{
  dataCopy = data;
  v8 = [(_PSKNNeighbor *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_nodeData, data);
    v9->_distance = distance;
  }

  return v9;
}

@end