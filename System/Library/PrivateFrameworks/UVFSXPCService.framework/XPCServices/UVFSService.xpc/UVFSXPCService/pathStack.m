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
  v3 = [(NSMutableArray *)self->pathElements count];
  if (v3)
  {
    v3 = [(NSMutableArray *)self->pathElements lastObject];
  }

  return v3;
}

- (id)pop
{
  v3 = [(pathStack *)self peek];
  if (v3)
  {
    [(NSMutableArray *)self->pathElements removeObject:v3];
  }

  return v3;
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