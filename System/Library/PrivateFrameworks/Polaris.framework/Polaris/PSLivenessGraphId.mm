@interface PSLivenessGraphId
- (PSLivenessGraphId)initWithGraphName:(id)a3 executionSessionKey:(int)a4;
@end

@implementation PSLivenessGraphId

- (PSLivenessGraphId)initWithGraphName:(id)a3 executionSessionKey:(int)a4
{
  v7 = a3;
  if ([v7 length] && (v11.receiver = self, v11.super_class = PSLivenessGraphId, v8 = -[PSLivenessGraphId init](&v11, sel_init), (self = v8) != 0))
  {
    objc_storeStrong(&v8->_graphName, a3);
    self->_executionSessionKey = a4;
    self = self;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end