@interface _PSKNNeighbor
- (_PSKNNeighbor)initWithNodeData:(id)a3 distance:(double)a4;
@end

@implementation _PSKNNeighbor

- (_PSKNNeighbor)initWithNodeData:(id)a3 distance:(double)a4
{
  v7 = a3;
  v8 = [(_PSKNNeighbor *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_nodeData, a3);
    v9->_distance = a4;
  }

  return v9;
}

@end