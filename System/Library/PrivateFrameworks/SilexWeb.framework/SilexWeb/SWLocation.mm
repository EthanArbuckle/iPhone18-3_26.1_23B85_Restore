@interface SWLocation
- (BOOL)isEqual:(id)a3;
- (SWLocation)initWithContext:(id)a3 URL:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SWLocation

- (SWLocation)initWithContext:(id)a3 URL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SWLocation;
  v8 = [(SWLocation *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    context = v8->_context;
    v8->_context = v9;

    v11 = [v7 copy];
    URL = v8->_URL;
    v8->_URL = v11;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SWLocation alloc];
  context = self->_context;
  URL = self->_URL;

  return [(SWLocation *)v4 initWithContext:context URL:URL];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_1F5259BE8])
  {
    context = self->_context;
    v6 = [v4 context];
    if ([context isEqualToString:v6])
    {
      URL = self->_URL;
      v8 = URL;
      if (!URL)
      {
        context = [v4 URL];
        if (!context)
        {
          v10 = 1;
LABEL_11:

          goto LABEL_12;
        }

        v8 = self->_URL;
      }

      v9 = [v4 URL];
      v10 = [(NSURL *)v8 isEqual:v9];

      if (!URL)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_12:

    goto LABEL_13;
  }

  v10 = 0;
LABEL_13:

  return v10;
}

@end