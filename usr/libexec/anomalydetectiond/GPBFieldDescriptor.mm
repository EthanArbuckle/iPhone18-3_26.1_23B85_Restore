@interface GPBFieldDescriptor
- ($452E035DCF5B90C660B45AC6A1361EDE)defaultValue;
- (GPBEnumDescriptor)enumDescriptor;
- (GPBFieldDescriptor)init;
- (GPBFieldDescriptor)initWithFieldDescription:(void *)description includesDefault:(BOOL)default usesClassRefs:(BOOL)refs proto3OptionalKnown:(BOOL)known syntax:(unsigned __int8)syntax;
- (id)textFormatName;
- (unsigned)fieldType;
- (unsigned)mapKeyDataType;
- (void)dealloc;
@end

@implementation GPBFieldDescriptor

- (GPBFieldDescriptor)init
{
  v5.receiver = self;
  v5.super_class = GPBFieldDescriptor;
  v3 = [(GPBFieldDescriptor *)&v5 init];
  if (v3)
  {
    [(GPBFieldDescriptor *)v3 doesNotRecognizeSelector:a2];
  }

  return 0;
}

- (GPBFieldDescriptor)initWithFieldDescription:(void *)description includesDefault:(BOOL)default usesClassRefs:(BOOL)refs proto3OptionalKnown:(BOOL)known syntax:(unsigned __int8)syntax
{
  syntaxCopy = syntax;
  refsCopy = refs;
  defaultCopy = default;
  v38.receiver = self;
  v38.super_class = GPBFieldDescriptor;
  v12 = [(GPBFieldDescriptor *)&v38 init];
  v13 = v12;
  if (!v12)
  {
    return v13;
  }

  v14 = 8;
  if (!defaultCopy)
  {
    v14 = 0;
  }

  v15 = description + v14;
  v12->description_ = (description + v14);
  Uid = sel_getUid(*(description + v14));
  if (Uid)
  {
    v17 = Uid;
  }

  else
  {
    v17 = 0;
  }

  v13->getSel_ = v17;
  v18 = sub_10030C5FC("set", *v15, 0, 1);
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v13->setSel_ = v19;
  v20 = v15[30];
  v21 = v20 - 17;
  v22 = v13->description_->var5 & 0xF02;
  if (syntaxCopy != 3 || known || (v13->description_->var5 & 0xF02) != 0)
  {
    if ((v13->description_->var5 & 0xF02) != 0)
    {
      p_hasOrCountSel = &v13->hasOrCountSel_;
      v25 = *v15;
      v26 = "_Count";
      v27 = 0;
      v28 = 0;
LABEL_25:
      v31 = sub_10030C5FC(v27, v25, v26, v28);
      if (v31)
      {
        v32 = v31;
      }

      else
      {
        v32 = 0;
      }

      *p_hasOrCountSel = v32;
      goto LABEL_29;
    }

    v23 = *(v15 + 5);
LABEL_19:
    if (v23 < 0)
    {
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  v23 = *(v15 + 5);
  if (v23 < 0 || v21 > 0xFFFFFFFD)
  {
    goto LABEL_19;
  }

  *(v15 + 14) |= 0x20u;
LABEL_20:
  if ((*(v15 + 14) & 0x20) == 0)
  {
    v29 = sub_10030C5FC("has", *v15, 0, 0);
    if (v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v13->hasOrCountSel_ = v30;
    p_hasOrCountSel = &v13->setHasSel_;
    v25 = *v15;
    v27 = "setHas";
    v26 = 0;
    v28 = 1;
    goto LABEL_25;
  }

LABEL_29:
  if (v21 >= 0xFFFFFFFE)
  {
    if (refsCopy)
    {
      v13->msgClass_ = *(v15 + 1);
    }

    else
    {
      Class = objc_getClass(*(v15 + 1));
      v13->msgClass_ = Class;
      if (!Class)
      {
        sub_10030DE90();
      }
    }
  }

  else if (v20 == 17)
  {
    v33 = *(v15 + 1);
    if ((*(v15 + 14) & 0x80) != 0)
    {
      v13->enumHandling_.enumDescriptor_ = v33();
    }

    else
    {
      v13->enumHandling_.enumDescriptor_ = v33;
    }
  }

  if (v22)
  {
    v35 = 1;
  }

  else
  {
    v35 = !defaultCopy;
  }

  if (!v35)
  {
    v36 = *description;
    v13->defaultValue_.valueInt64 = v36;
    if (v20 == 13)
    {
      if (v36)
      {
        v13->defaultValue_.valueInt64 = [[NSData alloc] initWithBytes:v36 + 1 length:bswap32(*v36)];
      }
    }
  }

  return v13;
}

- (void)dealloc
{
  description = self->description_;
  if (description->var6 == 13 && (description->var5 & 2) == 0)
  {
  }

  v4.receiver = self;
  v4.super_class = GPBFieldDescriptor;
  [(GPBFieldDescriptor *)&v4 dealloc];
}

- (unsigned)fieldType
{
  var5 = self->description_->var5;
  if ((var5 & 2) != 0)
  {
    return 1;
  }

  else
  {
    return 2 * ((var5 & 0xF00) != 0);
  }
}

- (unsigned)mapKeyDataType
{
  v2 = (self->description_->var5 & 0xF00u) - 256;
  if (v2 < 0xC00)
  {
    return byte_1003BFFA8[v2 >> 8];
  }

  [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"GPBDescriptor.m" description:659, @"Not a map type"];
  return 7;
}

- (GPBEnumDescriptor)enumDescriptor
{
  if ((self->description_->var5 & 0x80) != 0)
  {
    return self->enumHandling_.enumDescriptor_;
  }

  else
  {
    return 0;
  }
}

- ($452E035DCF5B90C660B45AC6A1361EDE)defaultValue
{
  valueInt64 = self->defaultValue_.valueInt64;
  description = self->description_;
  if ((description->var5 & 2) == 0)
  {
    var6 = description->var6;
    if (var6 == 13 && valueInt64 == 0)
    {
      return GPBEmptyNSData();
    }

    else
    {
      if (valueInt64)
      {
        v7 = 0;
      }

      else
      {
        v7 = var6 == 14;
      }

      if (v7)
      {
        return &stru_100436548;
      }
    }
  }

  return valueInt64;
}

- (id)textFormatName
{
  if ((self->description_->var5 & 0x40) == 0)
  {
    name = [(GPBFieldDescriptor *)self name];
    v4 = [(NSString *)name length];
    if ([(NSString *)name hasSuffix:@"_p"])
    {
      name = [(NSString *)name substringToIndex:v4 - 2];
      v4 = [(NSString *)name length];
    }

    if ((self->description_->var5 & 2) != 0 && [(NSString *)name hasSuffix:@"Array"])
    {
      name = [(NSString *)name substringToIndex:v4 - 5];
      v4 = [(NSString *)name length];
    }

    if (self->description_->var6 == 16)
    {
      v5 = [(NSString *)name characterAtIndex:0];
      if (v5 - 97 <= 0x19)
      {
        v6 = [NSString stringWithFormat:@"%C", (v5 - 32)];

        return [(NSString *)name stringByReplacingCharactersInRange:0 withString:1, v6];
      }

      return name;
    }

    else
    {
      v11 = [NSMutableString stringWithCapacity:v4];
      if (v4)
      {
        v12 = 0;
        v13 = 1;
        do
        {
          v14 = [(NSString *)name characterAtIndex:v12];
          if ((v14 - 65) > 0x19 || v13 == 1)
          {
            [(NSMutableString *)v11 appendFormat:@"%C", v14];
          }

          else
          {
            [(NSMutableString *)v11 appendFormat:@"_%C", v14 | 0x20];
          }

          v12 = v13;
        }

        while (v4 > v13++);
      }
    }

    return v11;
  }

  AssociatedObject = objc_getAssociatedObject(self, &unk_1003BFFA5);
  if (!AssociatedObject)
  {
    return 0;
  }

  pointerValue = [AssociatedObject pointerValue];
  var2 = self->description_->var2;
  name2 = [(GPBFieldDescriptor *)self name];

  return GPBDecodeTextFormatName(pointerValue, var2, name2);
}

@end