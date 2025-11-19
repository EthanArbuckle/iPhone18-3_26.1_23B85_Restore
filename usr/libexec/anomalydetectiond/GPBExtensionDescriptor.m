@interface GPBExtensionDescriptor
- (GPBEnumDescriptor)enumDescriptor;
- (GPBExtensionDescriptor)initWithExtensionDescription:(GPBExtensionDescription *)description usesClassRefs:(BOOL)a4;
- (id)defaultValue;
- (int)alternateWireType;
- (int64_t)compareByFieldNumber:(id)a3;
- (void)dealloc;
@end

@implementation GPBExtensionDescriptor

- (GPBExtensionDescriptor)initWithExtensionDescription:(GPBExtensionDescription *)description usesClassRefs:(BOOL)a4
{
  v12.receiver = self;
  v12.super_class = GPBExtensionDescriptor;
  v6 = [(GPBExtensionDescriptor *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->description_ = description;
    if (!a4)
    {
      if (description->var3.var0)
      {
        v8 = objc_lookUpClass(description->var3.var0);
        if (!v8)
        {
          sub_10030DEEC();
        }

        v7->description_->var3.var0 = v8;
        description = v7->description_;
      }

      if (description->var2.var0)
      {
        v9 = objc_lookUpClass(description->var2.var0);
        if (!v9)
        {
          sub_10030DF48();
        }

        v7->description_->var2.var0 = v9;
        description = v7->description_;
      }
    }

    var6 = description->var6;
    if (var6 == 13)
    {
      if (description->var0.var2)
      {
        v7->defaultValue_.valueInt64 = [[NSData alloc] initWithBytes:description->var0.var2 + 4 length:bswap32(*description->var0.var2)];
      }
    }

    else if ((var6 - 15) >= 2)
    {
      v7->defaultValue_.valueInt64 = description->var0.var2;
    }
  }

  return v7;
}

- (void)dealloc
{
  description = self->description_;
  if (description->var6 == 13 && (description->var7 & 1) == 0)
  {
  }

  v4.receiver = self;
  v4.super_class = GPBExtensionDescriptor;
  [(GPBExtensionDescriptor *)&v4 dealloc];
}

- (int)alternateWireType
{
  description = self->description_;
  var7 = description->var7;
  if ((var7 & 1) == 0)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"GPBDescriptor.m" description:1071, @"Only valid on repeated extensions"];
    description = self->description_;
    var7 = description->var7;
  }

  var6 = description->var6;

  return GPBWireFormatForType(var6, (var7 & 2) == 0);
}

- (GPBEnumDescriptor)enumDescriptor
{
  description = self->description_;
  if (description->var6 == 17)
  {
    return (description->var4)();
  }

  else
  {
    return 0;
  }
}

- (id)defaultValue
{
  description = self->description_;
  if (description->var7)
  {
    return 0;
  }

  else
  {
    valueData = 0;
    switch(description->var6)
    {
      case 0u:
        result = [NSNumber numberWithBool:self->defaultValue_.valueBool];
        break;
      case 1u:
      case 0xBu:
        result = [NSNumber numberWithUnsignedInt:self->defaultValue_.valueUInt32];
        break;
      case 2u:
      case 7u:
      case 9u:
      case 0x11u:
        result = [NSNumber numberWithInt:self->defaultValue_.valueUInt32];
        break;
      case 3u:
        LODWORD(v2) = self->defaultValue_.valueInt32;
        result = [NSNumber numberWithFloat:v2];
        break;
      case 4u:
      case 0xCu:
        result = [NSNumber numberWithUnsignedLongLong:self->defaultValue_.valueInt64];
        break;
      case 5u:
      case 8u:
      case 0xAu:
        result = [NSNumber numberWithLongLong:self->defaultValue_.valueInt64];
        break;
      case 6u:
        result = [NSNumber numberWithDouble:self->defaultValue_.valueDouble];
        break;
      case 0xDu:
        valueData = self->defaultValue_.valueData;
        if (valueData)
        {
          return valueData;
        }

        result = GPBEmptyNSData();
        break;
      case 0xEu:
        valueData = self->defaultValue_.valueData;
        if (!valueData)
        {
          return &stru_100436548;
        }

        return valueData;
      default:
        return valueData;
    }
  }

  return result;
}

- (int64_t)compareByFieldNumber:(id)a3
{
  var5 = self->description_->var5;
  v4 = *(*(a3 + 1) + 40);
  v5 = var5 < v4;
  v6 = var5 != v4;
  if (v5)
  {
    return -1;
  }

  else
  {
    return v6;
  }
}

@end