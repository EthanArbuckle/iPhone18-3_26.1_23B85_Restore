@interface SFTextColumn
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFTextColumn)initWithCoder:(id)coder;
- (SFTextColumn)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFTextColumn

- (unint64_t)hash
{
  sections = [(SFTextColumn *)self sections];
  v3 = [sections hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(SFTextColumn *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    sections = [(SFTextColumn *)self sections];
    sections2 = [(SFTextColumn *)v5 sections];
    if ((sections != 0) == (sections2 == 0))
    {
      v11 = 0;
    }

    else
    {
      sections3 = [(SFTextColumn *)self sections];
      if (sections3)
      {
        sections4 = [(SFTextColumn *)self sections];
        sections5 = [(SFTextColumn *)v5 sections];
        v11 = [sections4 isEqual:sections5];
      }

      else
      {
        v11 = 1;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  sections = [(SFTextColumn *)self sections];
  v6 = [sections copy];
  [v4 setSections:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBTextColumn alloc] initWithFacade:self];
  jsonData = [(_SFPBTextColumn *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBTextColumn alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBTextColumn *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBTextColumn alloc] initWithFacade:self];
  data = [(_SFPBTextColumn *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFTextColumn)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBTextColumn alloc] initWithData:v5];
  v7 = [(SFTextColumn *)self initWithProtobuf:v6];

  return v7;
}

- (SFTextColumn)initWithProtobuf:(id)protobuf
{
  v23 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v21.receiver = self;
  v21.super_class = SFTextColumn;
  v5 = [(SFTextColumn *)&v21 init];
  if (v5)
  {
    sections = [protobufCopy sections];
    if (sections)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    sections2 = [protobufCopy sections];
    v9 = [sections2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(sections2);
          }

          v13 = [[SFTextColumnSection alloc] initWithProtobuf:*(*(&v17 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [sections2 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }

    [(SFTextColumn *)v5 setSections:v7];
    v14 = v5;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

@end