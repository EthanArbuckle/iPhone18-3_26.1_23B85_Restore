@interface TLToneImportResponse
- (TLToneImportResponse)initWithStatusCode:(int64_t)code toneIdentifier:(id)identifier;
- (id)description;
@end

@implementation TLToneImportResponse

- (TLToneImportResponse)initWithStatusCode:(int64_t)code toneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = TLToneImportResponse;
  v7 = [(TLToneImportResponse *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_statusCode = code;
    v9 = [identifierCopy copy];
    toneIdentifier = v8->_toneIdentifier;
    v8->_toneIdentifier = v9;
  }

  return v8;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  statusCode = self->_statusCode;
  if (statusCode > 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = _TLToneImportStatusCodeHumanReadableDescriptions[statusCode];
  }

  [v6 appendFormat:@"; statusCode = %@", v8];

  if (self->_toneIdentifier)
  {
    [v6 appendFormat:@"; toneIdentifier = %@", self->_toneIdentifier];
  }

  [v6 appendString:@">"];

  return v6;
}

@end