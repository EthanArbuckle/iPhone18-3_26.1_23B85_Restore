@interface ISPlayerOutputTransitionOptions
- (ISPlayerOutputTransitionOptions)init;
- (id)description;
@end

@implementation ISPlayerOutputTransitionOptions

- (id)description
{
  v6.receiver = self;
  v6.super_class = ISPlayerOutputTransitionOptions;
  v3 = [(ISPlayerOutputTransitionOptions *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@"\n\t\tduration:\t%f", *&self->_transitionDuration];

  return v4;
}

- (ISPlayerOutputTransitionOptions)init
{
  v3.receiver = self;
  v3.super_class = ISPlayerOutputTransitionOptions;
  result = [(ISPlayerOutputTransitionOptions *)&v3 init];
  if (result)
  {
    result->_transitionDuration = 0.0;
  }

  return result;
}

@end