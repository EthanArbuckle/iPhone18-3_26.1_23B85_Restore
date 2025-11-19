@interface PPSyncedSocialHighlight
- (PPSyncedSocialHighlight)initWithCoder:(id)a3;
- (PPSyncedSocialHighlight)initWithHighlight:(id)a3 rankingDate:(id)a4 originatingDeviceId:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPSyncedSocialHighlight

- (PPSyncedSocialHighlight)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E69C5D78];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = pp_social_highlights_log_handle();
  v8 = [v4 robustDecodeObjectOfClass:v6 forKey:@"hi" withCoder:v5 expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v7];

  v9 = MEMORY[0x1E69C5D78];
  v10 = objc_opt_class();
  v11 = pp_social_highlights_log_handle();
  v12 = [v9 robustDecodeObjectOfClass:v10 forKey:@"rd" withCoder:v5 expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v11];

  v13 = MEMORY[0x1E69C5D78];
  v14 = objc_opt_class();
  v15 = pp_social_highlights_log_handle();
  v16 = [v13 robustDecodeObjectOfClass:v14 forKey:@"od" withCoder:v5 expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v15];

  v17 = 0;
  if (v8 && v12 && v16)
  {
    self = [(PPSyncedSocialHighlight *)self initWithHighlight:v8 rankingDate:v12 originatingDeviceId:v16];
    v17 = self;
  }

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  highlight = self->_highlight;
  v5 = a3;
  [v5 encodeObject:highlight forKey:@"hi"];
  [v5 encodeObject:self->_rankingDate forKey:@"rd"];
  [v5 encodeObject:self->_originatingDeviceId forKey:@"od"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(PPSyncedSocialHighlight *)self highlight];
  v5 = [(PPSyncedSocialHighlight *)self rankingDate];
  v6 = [(PPSyncedSocialHighlight *)self originatingDeviceId];
  v7 = [v3 initWithFormat:@"<PPSyncedSocialHighlight hi:'%@' rd:'%@' od:'%@'>", v4, v5, v6];

  return v7;
}

- (PPSyncedSocialHighlight)initWithHighlight:(id)a3 rankingDate:(id)a4 originatingDeviceId:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PPSyncedSocialHighlight;
  v12 = [(PPSyncedSocialHighlight *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_highlight, a3);
    objc_storeStrong(&v13->_rankingDate, a4);
    objc_storeStrong(&v13->_originatingDeviceId, a5);
  }

  return v13;
}

@end