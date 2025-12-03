@interface SWLocation
- (BOOL)isEqual:(id)equal;
- (SWLocation)initWithContext:(id)context URL:(id)l;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SWLocation

- (SWLocation)initWithContext:(id)context URL:(id)l
{
  contextCopy = context;
  lCopy = l;
  v14.receiver = self;
  v14.super_class = SWLocation;
  v8 = [(SWLocation *)&v14 init];
  if (v8)
  {
    v9 = [contextCopy copy];
    context = v8->_context;
    v8->_context = v9;

    v11 = [lCopy copy];
    URL = v8->_URL;
    v8->_URL = v11;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SWLocation alloc];
  context = self->_context;
  URL = self->_URL;

  return [(SWLocation *)v4 initWithContext:context URL:URL];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy conformsToProtocol:&unk_1F5259BE8])
  {
    context = self->_context;
    context = [equalCopy context];
    if ([context isEqualToString:context])
    {
      URL = self->_URL;
      v8 = URL;
      if (!URL)
      {
        context = [equalCopy URL];
        if (!context)
        {
          v10 = 1;
LABEL_11:

          goto LABEL_12;
        }

        v8 = self->_URL;
      }

      v9 = [equalCopy URL];
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