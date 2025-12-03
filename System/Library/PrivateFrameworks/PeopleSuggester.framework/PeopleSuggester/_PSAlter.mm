@interface _PSAlter
- (_PSAlter)initWithName:(id)name;
- (_PSAlter)initWithName:(id)name andDistance:(double)distance andTime:(double)time;
@end

@implementation _PSAlter

- (_PSAlter)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = _PSAlter;
  v6 = [(_PSAlter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
    *&v7->_distanceToCluster = xmmword_1B5FCA8A0;
  }

  return v7;
}

- (_PSAlter)initWithName:(id)name andDistance:(double)distance andTime:(double)time
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = _PSAlter;
  v10 = [(_PSAlter *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_name, name);
    v11->_distanceToCluster = distance;
    v11->_timeSinceLastContact = time;
  }

  return v11;
}

@end