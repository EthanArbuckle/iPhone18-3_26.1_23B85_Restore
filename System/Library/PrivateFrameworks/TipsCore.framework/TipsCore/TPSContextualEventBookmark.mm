@interface TPSContextualEventBookmark
- (TPSContextualEventBookmark)initWithCoder:(id)a3;
- (TPSContextualEventBookmark)initWithDataVersion:(unsigned int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSContextualEventBookmark

- (TPSContextualEventBookmark)initWithDataVersion:(unsigned int)a3
{
  v5.receiver = self;
  v5.super_class = TPSContextualEventBookmark;
  result = [(TPSContextualEventBookmark *)&v5 init];
  if (result)
  {
    result->_dataVersion = a3;
  }

  return result;
}

- (TPSContextualEventBookmark)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TPSContextualEventBookmark;
  v5 = [(TPSContextualEventBookmark *)&v8 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dataVersion"];
    v5->_dataVersion = [v6 unsignedIntValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  dataVersion = self->_dataVersion;
  v5 = a3;
  v6 = [v3 numberWithUnsignedInt:dataVersion];
  [v5 encodeObject:v6 forKey:@"dataVersion"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [v4 setDataVersion:self->_dataVersion];
  return v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v7.receiver = self;
  v7.super_class = TPSContextualEventBookmark;
  v4 = [(TPSContextualEventBookmark *)&v7 description];
  v5 = [v3 initWithString:v4];

  [v5 appendFormat:@"; %@ = %d", @"dataVersion", -[TPSContextualEventBookmark dataVersion](self, "dataVersion")];

  return v5;
}

@end