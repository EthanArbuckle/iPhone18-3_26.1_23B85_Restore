@interface PCObjectZipper
- (BOOL)nextObjectPairWithHandler:(id)a3;
- (PCObjectZipper)initWithObjects:(id)a3 others:(id)a4 comparator:(id)a5;
@end

@implementation PCObjectZipper

- (PCObjectZipper)initWithObjects:(id)a3 others:(id)a4 comparator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25.receiver = self;
  v25.super_class = PCObjectZipper;
  v11 = [(PCObjectZipper *)&v25 init];
  if (v11)
  {
    v12 = [v8 sortedArrayUsingComparator:v10];

    v13 = [v9 sortedArrayUsingComparator:v10];

    v14 = [v12 objectEnumerator];
    objectEnumerator = v11->objectEnumerator;
    v11->objectEnumerator = v14;

    v16 = [v13 objectEnumerator];
    otherEnumerator = v11->otherEnumerator;
    v11->otherEnumerator = v16;

    v18 = [(NSEnumerator *)v11->objectEnumerator nextObject];
    object = v11->object;
    v11->object = v18;

    v20 = [(NSEnumerator *)v11->otherEnumerator nextObject];
    other = v11->other;
    v11->other = v20;

    v22 = _Block_copy(v10);
    objectComparator = v11->objectComparator;
    v11->objectComparator = v22;

    v8 = v12;
    v9 = v13;
  }

  return v11;
}

- (BOOL)nextObjectPairWithHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->object && self->other)
  {
    (*(v4 + 2))(v4);
    other = self->other;
    object = self->object;
    v8 = (*(self->objectComparator + 2))();
    v9 = 16;
    if (v8 == -1)
    {
      v9 = 8;
      v10 = 24;
    }

    else
    {
      v10 = 32;
    }

    v11 = [*(&self->super.isa + v9) nextObject];
    v12 = *(&self->super.isa + v10);
    *(&self->super.isa + v10) = v11;

    v13 = [(PCObjectZipper *)self hasNextObjectPair];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end