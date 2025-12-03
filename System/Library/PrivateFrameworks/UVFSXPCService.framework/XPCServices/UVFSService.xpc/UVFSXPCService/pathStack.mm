@interface pathStack
- (id)fullPath;
- (id)peek;
- (id)pop;
- (pathStack)init;
@end

@implementation pathStack

- (pathStack)init
{
  v6.receiver = self;
  v6.super_class = pathStack;
  v2 = [(pathStack *)&v6 init];
  if (v2)
  {
    v3 = [NSMutableArray arrayWithCapacity:128];
    pathElements = v2->pathElements;
    v2->pathElements = v3;

    if (!v2->pathElements)
    {

      return 0;
    }
  }

  return v2;
}

- (id)peek
{
  lastObject = [(NSMutableArray *)self->pathElements count];
  if (lastObject)
  {
    lastObject = [(NSMutableArray *)self->pathElements lastObject];
  }

  return lastObject;
}

- (id)pop
{
  peek = [(pathStack *)self peek];
  if (peek)
  {
    [(NSMutableArray *)self->pathElements removeObject:peek];
  }

  return peek;
}

- (id)fullPath
{
  v3 = [(NSMutableArray *)self->pathElements count];
  if (v3)
  {
    v3 = [NSString pathWithComponents:self->pathElements];
  }

  return v3;
}

@end