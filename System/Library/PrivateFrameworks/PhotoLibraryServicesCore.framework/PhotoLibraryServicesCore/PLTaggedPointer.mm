@interface PLTaggedPointer
+ (id)newInstanceWithPayload:(unint64_t)payload;
+ (id)newInstanceWithSignedPayload:(int64_t)payload;
+ (unsigned)tag;
- (BOOL)isEqual:(id)equal;
- (PLTaggedPointer)initWithPayload:(unint64_t)payload;
- (PLTaggedPointer)initWithSignedPayload:(int64_t)payload;
- (int64_t)signedPayload;
- (unint64_t)payload;
@end

@implementation PLTaggedPointer

+ (unsigned)tag
{
  if (!*MEMORY[0x1E69E5908])
  {
    goto LABEL_8;
  }

  v3 = objc_opt_class();
  objc_sync_enter(v3);
  if (PFObjc_implementsClassMethod())
  {
    LOWORD(v4) = [self tag];
    objc_sync_exit(v3);

    return v4;
  }

  v4 = nextTag;
  if (nextTag > 0xBu)
  {
    v4 = 0;
  }

  else
  {
    _objc_registerTaggedPointerClass();
    ++nextTag;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __22__PLTaggedPointer_tag__block_invoke;
  v11[3] = &__block_descriptor_34_e8_S16__0_8l;
  v12 = v4;
  v5 = MEMORY[0x1AC5925C0](v11);
  Class = object_getClass(self);
  v7 = MEMORY[0x1AC5925C0](v5);
  v8 = imp_implementationWithBlock(v7);
  class_addMethod(Class, "tag", v8, 0);

  objc_sync_exit(v3);
  if (!v4)
  {
LABEL_8:
    v10 = NSStringFromClass(self);
    _PFAssertContinueHandler();

    LOWORD(v4) = 0;
  }

  return v4;
}

- (unint64_t)payload
{
  if ((self & 0x8000000000000000) == 0 || !*MEMORY[0x1E69E5908])
  {
    return self->_payload.unsignedPayload;
  }

  v2 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v2 = 0;
  }

  v3 = v2 ^ self;
  v4 = 0xFFFFFFFFFFFFFFFLL;
  if ((~v3 & 7) == 0)
  {
    v4 = 0xFFFFFFFFFFFFFLL;
  }

  return v4 & (v3 >> 3);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    payload = [(PLTaggedPointer *)self payload];
    v6 = payload == [equalCopy payload];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)signedPayload
{
  if ((self & 0x8000000000000000) == 0 || !*MEMORY[0x1E69E5908])
  {
    return self->_payload.signedPayload;
  }

  v2 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v2 = 0;
  }

  v3 = v2 ^ self;
  v4 = ~v3;
  v5 = (v3 << 9) >> 12;
  v6 = (2 * v3) >> 4;
  if ((v4 & 7) != 0)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

- (PLTaggedPointer)initWithSignedPayload:(int64_t)payload
{
  v5.receiver = self;
  v5.super_class = PLTaggedPointer;
  result = [(PLTaggedPointer *)&v5 init];
  if (result)
  {
    result->_payload.unsignedPayload = payload;
  }

  return result;
}

- (PLTaggedPointer)initWithPayload:(unint64_t)payload
{
  v5.receiver = self;
  v5.super_class = PLTaggedPointer;
  result = [(PLTaggedPointer *)&v5 init];
  if (result)
  {
    result->_payload.unsignedPayload = payload;
  }

  return result;
}

+ (id)newInstanceWithSignedPayload:(int64_t)payload
{
  v5 = [self tag];
  if (v5)
  {
    if (v5 > 6)
    {
      v6 = (((8 * (payload & 0xFFFFFFFFFFFFFLL)) | (v5 << 55)) + 0x7C00000000000000) | 0x8000000000000007;
    }

    else
    {
      v6 = v5 | (8 * payload) | 0x8000000000000000;
    }

    v7 = *MEMORY[0x1E69E5910] ^ v6;
    if ((~v7 & 0xC000000000000007) != 0)
    {
      v6 = v7 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v7 & 7));
    }

    v8 = v6;
    if ([v8 signedPayload] == payload)
    {
      if (v6)
      {
        return v8;
      }
    }

    else
    {
    }
  }

  v10 = [self alloc];

  return [v10 initWithPayload:payload];
}

+ (id)newInstanceWithPayload:(unint64_t)payload
{
  v5 = [self tag];
  if (v5)
  {
    if (v5 > 6)
    {
      v6 = (((8 * (payload & 0xFFFFFFFFFFFFFLL)) | (v5 << 55)) + 0x7C00000000000000) | 0x8000000000000007;
    }

    else
    {
      v6 = v5 | (8 * payload) | 0x8000000000000000;
    }

    v7 = *MEMORY[0x1E69E5910] ^ v6;
    if ((~v7 & 0xC000000000000007) != 0)
    {
      v6 = v7 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v7 & 7));
    }

    v8 = v6;
    if ([v8 payload] == payload)
    {
      if (v6)
      {
        return v8;
      }
    }

    else
    {
    }
  }

  v10 = [self alloc];

  return [v10 initWithPayload:payload];
}

@end