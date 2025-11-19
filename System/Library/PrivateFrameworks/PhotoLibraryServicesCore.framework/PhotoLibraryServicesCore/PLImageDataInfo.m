@interface PLImageDataInfo
- (id)description;
@end

@implementation PLImageDataInfo

- (id)description
{
  v8.receiver = self;
  v8.super_class = PLImageDataInfo;
  v3 = [(PLImageDataInfo *)&v8 description];
  v4 = v3;
  v5 = @"NO";
  if (self->_deliveredPlaceholder)
  {
    v5 = @"YES";
  }

  v6 = [v3 stringByAppendingFormat:@" - deliveredFormat: %ld, deliveredPlaceholder: %@, URL: %@, UTI: %@", self->_deliveredFormat, v5, self->_URL, self->_UTI];

  return v6;
}

@end