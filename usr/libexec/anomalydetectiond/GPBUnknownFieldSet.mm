@interface GPBUnknownFieldSet
- (BOOL)hasField:(int)field;
- (BOOL)isEqual:(id)equal;
- (BOOL)mergeFieldFrom:(int)from input:(id)input;
- (id)copyWithZone:(_NSZone *)zone;
- (id)data;
- (id)description;
- (id)getField:(int)field;
- (id)sortedFields;
- (unint64_t)countOfFields;
- (unint64_t)hash;
- (unint64_t)serializedSize;
- (unint64_t)serializedSizeAsMessageSet;
- (void)addField:(id)field;
- (void)dealloc;
- (void)getTags:(int *)tags;
- (void)mergeFromCodedInputStream:(id)stream;
- (void)mergeFromData:(id)data;
- (void)mergeUnknownFields:(id)fields;
- (void)writeAsMessageSetTo:(id)to;
- (void)writeToCodedOutputStream:(id)stream;
@end

@implementation GPBUnknownFieldSet

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[GPBUnknownFieldSet allocWithZone:?]];
  fields = self->fields_;
  if (fields)
  {
    CFDictionaryApplyFunction(fields, sub_10031BA18, v4);
  }

  return v4;
}

- (void)dealloc
{
  fields = self->fields_;
  if (fields)
  {
    CFRelease(fields);
  }

  v4.receiver = self;
  v4.super_class = GPBUnknownFieldSet;
  [(GPBUnknownFieldSet *)&v4 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  fields = self->fields_;
  v6 = *(equal + 1);
  result = (fields | v6) == 0;
  if (fields)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    return CFEqual(self->fields_, v6) != 0;
  }

  return result;
}

- (unint64_t)hash
{
  fields = self->fields_;
  if (fields)
  {
    return CFHash(fields);
  }

  else
  {
    return objc_opt_class();
  }
}

- (BOOL)hasField:(int)field
{
  fields = self->fields_;
  if (fields)
  {
    LOBYTE(fields) = CFDictionaryGetValue(fields, field) != 0;
  }

  return fields;
}

- (id)getField:(int)field
{
  result = self->fields_;
  if (result)
  {
    return CFDictionaryGetValue(result, field);
  }

  return result;
}

- (unint64_t)countOfFields
{
  result = self->fields_;
  if (result)
  {
    return CFDictionaryGetCount(result);
  }

  return result;
}

- (id)sortedFields
{
  fields = self->fields_;
  if (fields)
  {
    Count = CFDictionaryGetCount(fields);
    v5 = (&v15 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
    CFDictionaryGetKeysAndValues(self->fields_, &v15, v5);
    v6 = &v15 - 2 * Count;
    if (Count)
    {
      v7 = 0;
      v8 = v6 + 1;
      do
      {
        v9 = v5[v7];
        *(v8 - 1) = v9;
        *v8 = v9;
        ++v7;
        v8 += 2;
      }

      while (Count != v7);
      qsort_b(&v15 - 2 * Count, Count, 0x10uLL, &stru_100435678);
      v10 = (v6 + 1);
      v11 = (&v15 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
      v12 = Count;
      do
      {
        v13 = *v10;
        v10 += 2;
        *v11++ = v13;
        --v12;
      }

      while (v12);
    }

    else
    {
      qsort_b(v6, 0, 0x10uLL, &stru_100435678);
    }

    return [NSArray arrayWithObjects:v5 count:Count];
  }

  else
  {

    return +[NSArray array];
  }
}

- (void)writeToCodedOutputStream:(id)stream
{
  fields = self->fields_;
  if (fields)
  {
    Count = CFDictionaryGetCount(fields);
    v7 = (&v14 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
    CFDictionaryGetKeysAndValues(self->fields_, &v14, v7);
    if (Count < 2)
    {
      [*v7 writeToOutput:stream];
    }

    else
    {
      v8 = &v14 - 2 * Count;
      v9 = 0;
      v10 = v8 + 1;
      do
      {
        v11 = v7[v9];
        *(v10 - 1) = v11;
        *v10 = v11;
        ++v9;
        v10 += 2;
      }

      while (Count != v9);
      qsort_b(&v14 - 2 * Count, Count, 0x10uLL, &stru_100435698);
      v12 = (v8 + 1);
      do
      {
        v13 = *v12;
        v12 += 2;
        [v13 writeToOutput:stream];
        --Count;
      }

      while (Count);
    }
  }
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p>: TextFormat: {\n", objc_opt_class(), self];
  [(NSMutableString *)v3 appendString:GPBTextFormatForUnknownFieldSet(self, @"  ")];
  [(NSMutableString *)v3 appendString:@"}"];
  return v3;
}

- (unint64_t)serializedSize
{
  context = 0;
  result = self->fields_;
  if (result)
  {
    CFDictionaryApplyFunction(result, sub_10031BF54, &context);
    return context;
  }

  return result;
}

- (void)writeAsMessageSetTo:(id)to
{
  fields = self->fields_;
  if (fields)
  {
    CFDictionaryApplyFunction(fields, sub_10031BFA8, to);
  }
}

- (unint64_t)serializedSizeAsMessageSet
{
  context = 0;
  result = self->fields_;
  if (result)
  {
    CFDictionaryApplyFunction(result, sub_10031BFF4, &context);
    return context;
  }

  return result;
}

- (id)data
{
  v3 = [NSMutableData dataWithLength:[(GPBUnknownFieldSet *)self serializedSize]];
  v4 = [[GPBCodedOutputStream alloc] initWithData:v3];
  [(GPBUnknownFieldSet *)self writeToCodedOutputStream:v4];

  return v3;
}

- (void)addField:(id)field
{
  number = [field number];
  if (!number)
  {
    [NSException raise:NSInvalidArgumentException format:@"Zero is not a valid field number."];
  }

  fields = self->fields_;
  if (!fields)
  {
    fields = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
    self->fields_ = fields;
  }

  CFDictionarySetValue(fields, number, field);
}

- (void)mergeUnknownFields:(id)fields
{
  if (fields)
  {
    v4 = *(fields + 1);
    if (v4)
    {
      CFDictionaryApplyFunction(v4, sub_10031C20C, self);
    }
  }
}

- (void)mergeFromData:(id)data
{
  v4 = [[GPBCodedInputStream alloc] initWithData:data];
  [(GPBUnknownFieldSet *)self mergeFromCodedInputStream:v4];
  [(GPBCodedInputStream *)v4 checkLastTagWas:0];
}

- (BOOL)mergeFieldFrom:(int)from input:(id)input
{
  if (!GPBWireFormatIsValidTag(from))
  {
    sub_10031C6F8(a2, self);
  }

  TagFieldNumber = GPBWireFormatGetTagFieldNumber(from);
  TagWireType = GPBWireFormatGetTagWireType(from);
  v10 = 0;
  if (TagWireType <= 1)
  {
    if (TagWireType)
    {
      if (TagWireType == 1)
      {
        v10 = 1;
        [-[GPBUnknownFieldSet mutableFieldForNumber:create:](self mutableFieldForNumber:TagFieldNumber create:{1), "addFixed64:", GPBCodedInputStreamReadFixed64(input + 1)}];
      }
    }

    else
    {
      v10 = 1;
      [-[GPBUnknownFieldSet mutableFieldForNumber:create:](self mutableFieldForNumber:TagFieldNumber create:{1), "addVarint:", GPBCodedInputStreamReadInt64(input + 1)}];
    }
  }

  else
  {
    switch(TagWireType)
    {
      case 2:
        RetainedBytes = GPBCodedInputStreamReadRetainedBytes(input + 1);
        v10 = 1;
        [-[GPBUnknownFieldSet mutableFieldForNumber:create:](self mutableFieldForNumber:TagFieldNumber create:{1), "addLengthDelimited:", RetainedBytes}];

        break;
      case 3:
        v12 = objc_alloc_init(GPBUnknownFieldSet);
        [input readUnknownGroup:TagFieldNumber message:v12];
        v10 = 1;
        [-[GPBUnknownFieldSet mutableFieldForNumber:create:](self mutableFieldForNumber:TagFieldNumber create:{1), "addGroup:", v12}];

        break;
      case 5:
        v10 = 1;
        [-[GPBUnknownFieldSet mutableFieldForNumber:create:](self mutableFieldForNumber:TagFieldNumber create:{1), "addFixed32:", GPBCodedInputStreamReadFixed32(input + 1)}];
        break;
    }
  }

  return v10;
}

- (void)mergeFromCodedInputStream:(id)stream
{
  do
  {
    Tag = GPBCodedInputStreamReadTag(stream + 8);
  }

  while (Tag && [(GPBUnknownFieldSet *)self mergeFieldFrom:Tag input:stream]);
}

- (void)getTags:(int *)tags
{
  fields = self->fields_;
  if (fields)
  {
    Count = CFDictionaryGetCount(fields);
    v7 = (&v9 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
    CFDictionaryGetKeysAndValues(self->fields_, v7, 0);
    for (; Count; --Count)
    {
      v8 = *v7++;
      *tags++ = v8;
    }
  }
}

@end