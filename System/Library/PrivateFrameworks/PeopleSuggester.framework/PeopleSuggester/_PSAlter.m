@interface _PSAlter
- (_PSAlter)initWithName:(id)a3;
- (_PSAlter)initWithName:(id)a3 andDistance:(double)a4 andTime:(double)a5;
@end

@implementation _PSAlter

- (_PSAlter)initWithName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _PSAlter;
  v6 = [(_PSAlter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
    *&v7->_distanceToCluster = xmmword_1B5FCA8A0;
  }

  return v7;
}

- (_PSAlter)initWithName:(id)a3 andDistance:(double)a4 andTime:(double)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = _PSAlter;
  v10 = [(_PSAlter *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_name, a3);
    v11->_distanceToCluster = a4;
    v11->_timeSinceLastContact = a5;
  }

  return v11;
}

@end