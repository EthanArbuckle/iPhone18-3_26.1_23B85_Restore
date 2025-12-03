@interface PPSyncedSocialHighlight
- (PPSyncedSocialHighlight)initWithCoder:(id)coder;
- (PPSyncedSocialHighlight)initWithHighlight:(id)highlight rankingDate:(id)date originatingDeviceId:(id)id;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPSyncedSocialHighlight

- (PPSyncedSocialHighlight)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E69C5D78];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = pp_social_highlights_log_handle();
  v8 = [v4 robustDecodeObjectOfClass:v6 forKey:@"hi" withCoder:coderCopy expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v7];

  v9 = MEMORY[0x1E69C5D78];
  v10 = objc_opt_class();
  v11 = pp_social_highlights_log_handle();
  v12 = [v9 robustDecodeObjectOfClass:v10 forKey:@"rd" withCoder:coderCopy expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v11];

  v13 = MEMORY[0x1E69C5D78];
  v14 = objc_opt_class();
  v15 = pp_social_highlights_log_handle();
  v16 = [v13 robustDecodeObjectOfClass:v14 forKey:@"od" withCoder:coderCopy expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v15];

  selfCopy = 0;
  if (v8 && v12 && v16)
  {
    self = [(PPSyncedSocialHighlight *)self initWithHighlight:v8 rankingDate:v12 originatingDeviceId:v16];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  highlight = self->_highlight;
  coderCopy = coder;
  [coderCopy encodeObject:highlight forKey:@"hi"];
  [coderCopy encodeObject:self->_rankingDate forKey:@"rd"];
  [coderCopy encodeObject:self->_originatingDeviceId forKey:@"od"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  highlight = [(PPSyncedSocialHighlight *)self highlight];
  rankingDate = [(PPSyncedSocialHighlight *)self rankingDate];
  originatingDeviceId = [(PPSyncedSocialHighlight *)self originatingDeviceId];
  v7 = [v3 initWithFormat:@"<PPSyncedSocialHighlight hi:'%@' rd:'%@' od:'%@'>", highlight, rankingDate, originatingDeviceId];

  return v7;
}

- (PPSyncedSocialHighlight)initWithHighlight:(id)highlight rankingDate:(id)date originatingDeviceId:(id)id
{
  highlightCopy = highlight;
  dateCopy = date;
  idCopy = id;
  v15.receiver = self;
  v15.super_class = PPSyncedSocialHighlight;
  v12 = [(PPSyncedSocialHighlight *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_highlight, highlight);
    objc_storeStrong(&v13->_rankingDate, date);
    objc_storeStrong(&v13->_originatingDeviceId, id);
  }

  return v13;
}

@end