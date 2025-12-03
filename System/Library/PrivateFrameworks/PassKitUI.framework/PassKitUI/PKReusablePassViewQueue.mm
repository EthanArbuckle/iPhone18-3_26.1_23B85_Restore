@interface PKReusablePassViewQueue
- (PKReusablePassViewQueue)initWithCount:(unint64_t)count;
- (id)dequeueReusablePassView;
@end

@implementation PKReusablePassViewQueue

- (id)dequeueReusablePassView
{
  anyObject = [(NSMutableSet *)self->_passViews anyObject];
  if (anyObject)
  {
    [(NSMutableSet *)self->_passViews removeObject:anyObject];
  }

  return anyObject;
}

- (PKReusablePassViewQueue)initWithCount:(unint64_t)count
{
  v9.receiver = self;
  v9.super_class = PKReusablePassViewQueue;
  v4 = [(PKReusablePassViewQueue *)&v9 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:count];
    passViews = v4->_passViews;
    v4->_passViews = v5;

    for (; count; --count)
    {
      v7 = [[PKPassView alloc] initWithPass:0];
      [(NSMutableSet *)v4->_passViews addObject:v7];
    }
  }

  return v4;
}

@end