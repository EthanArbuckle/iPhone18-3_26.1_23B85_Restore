@interface SFFlightDateDescriptor
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFFlightDateDescriptor)initWithCoder:(id)coder;
- (SFFlightDateDescriptor)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFFlightDateDescriptor

- (SFFlightDateDescriptor)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v19.receiver = self;
  v19.super_class = SFFlightDateDescriptor;
  v5 = [(SFFlightDateDescriptor *)&v19 init];
  if (v5)
  {
    scheduled = [protobufCopy scheduled];

    if (scheduled)
    {
      scheduled2 = [protobufCopy scheduled];
      v8 = MEMORY[0x1E695DF00];
      [scheduled2 secondsSince1970];
      v9 = [v8 dateWithTimeIntervalSince1970:?];
      [(SFFlightDateDescriptor *)v5 setScheduled:v9];
    }

    current = [protobufCopy current];

    if (current)
    {
      current2 = [protobufCopy current];
      v12 = MEMORY[0x1E695DF00];
      [current2 secondsSince1970];
      v13 = [v12 dateWithTimeIntervalSince1970:?];
      [(SFFlightDateDescriptor *)v5 setCurrent:v13];
    }

    [protobufCopy bufferMinutes];
    if (v14 != 0.0)
    {
      v15 = MEMORY[0x1E696AD98];
      [protobufCopy bufferMinutes];
      v16 = [v15 numberWithFloat:?];
      [(SFFlightDateDescriptor *)v5 setBufferMinutes:v16];
    }

    v17 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  scheduled = [(SFFlightDateDescriptor *)self scheduled];
  v4 = [scheduled hash];
  current = [(SFFlightDateDescriptor *)self current];
  v6 = [current hash] ^ v4;
  bufferMinutes = [(SFFlightDateDescriptor *)self bufferMinutes];
  v8 = [bufferMinutes hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFFlightDateDescriptor *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      scheduled = [(SFFlightDateDescriptor *)self scheduled];
      scheduled2 = [(SFFlightDateDescriptor *)v6 scheduled];
      if ((scheduled != 0) == (scheduled2 == 0))
      {
        v11 = 0;
LABEL_30:

        goto LABEL_31;
      }

      scheduled3 = [(SFFlightDateDescriptor *)self scheduled];
      if (scheduled3)
      {
        scheduled4 = [(SFFlightDateDescriptor *)self scheduled];
        scheduled5 = [(SFFlightDateDescriptor *)v6 scheduled];
        if (![scheduled4 isEqual:scheduled5])
        {
          v11 = 0;
          goto LABEL_28;
        }

        v31 = scheduled5;
      }

      current = [(SFFlightDateDescriptor *)self current];
      current2 = [(SFFlightDateDescriptor *)v6 current];
      v14 = current2;
      if ((current != 0) == (current2 == 0))
      {

        v11 = 0;
        goto LABEL_27;
      }

      current3 = [(SFFlightDateDescriptor *)self current];
      if (current3)
      {
        v25 = current;
        current4 = [(SFFlightDateDescriptor *)self current];
        current5 = [(SFFlightDateDescriptor *)v6 current];
        v28 = current4;
        if (![current4 isEqual:?])
        {
          v11 = 0;
          current = v25;
          goto LABEL_25;
        }

        v29 = current3;
        v30 = scheduled4;
        current = v25;
      }

      else
      {
        v29 = 0;
        v30 = scheduled4;
      }

      bufferMinutes = [(SFFlightDateDescriptor *)self bufferMinutes];
      bufferMinutes2 = [(SFFlightDateDescriptor *)v6 bufferMinutes];
      if ((bufferMinutes != 0) == (bufferMinutes2 == 0))
      {

        v11 = 0;
        current3 = v29;
        scheduled4 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v24 = bufferMinutes;
        v26 = bufferMinutes2;
        bufferMinutes3 = [(SFFlightDateDescriptor *)self bufferMinutes];
        current3 = v29;
        if (bufferMinutes3)
        {
          v23 = bufferMinutes3;
          bufferMinutes4 = [(SFFlightDateDescriptor *)self bufferMinutes];
          bufferMinutes5 = [(SFFlightDateDescriptor *)v6 bufferMinutes];
          v11 = [bufferMinutes4 isEqual:?];
        }

        else
        {

          v11 = 1;
        }

        scheduled4 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

LABEL_25:

LABEL_26:
LABEL_27:
      scheduled5 = v31;
      if (!scheduled3)
      {
LABEL_29:

        goto LABEL_30;
      }

LABEL_28:

      goto LABEL_29;
    }

    v11 = 0;
  }

LABEL_31:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  scheduled = [(SFFlightDateDescriptor *)self scheduled];
  v6 = [scheduled copy];
  [v4 setScheduled:v6];

  current = [(SFFlightDateDescriptor *)self current];
  v8 = [current copy];
  [v4 setCurrent:v8];

  bufferMinutes = [(SFFlightDateDescriptor *)self bufferMinutes];
  v10 = [bufferMinutes copy];
  [v4 setBufferMinutes:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBFlightDateDescriptor alloc] initWithFacade:self];
  jsonData = [(_SFPBFlightDateDescriptor *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBFlightDateDescriptor alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBFlightDateDescriptor *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBFlightDateDescriptor alloc] initWithFacade:self];
  data = [(_SFPBFlightDateDescriptor *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFFlightDateDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBFlightDateDescriptor alloc] initWithData:v5];
  v7 = [(SFFlightDateDescriptor *)self initWithProtobuf:v6];

  return v7;
}

@end