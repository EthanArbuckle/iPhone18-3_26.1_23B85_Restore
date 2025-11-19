@interface WBSURLCompletionMatchSnapshot
- (NSString)description;
- (WBSURLCompletionMatchSnapshot)initWithCoder:(id)a3;
- (WBSURLCompletionMatchSnapshot)initWithURL:(id)a3 title:(id)a4 matchLocation:(int64_t)a5 isTopHit:(BOOL)a6 isSynthesizedTopHit:(BOOL)a7 isTopHitDueToTriggerMatch:(BOOL)a8 visitCount:(int64_t)a9 lastVisitTime:(id)a10;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBSURLCompletionMatchSnapshot

- (WBSURLCompletionMatchSnapshot)initWithURL:(id)a3 title:(id)a4 matchLocation:(int64_t)a5 isTopHit:(BOOL)a6 isSynthesizedTopHit:(BOOL)a7 isTopHitDueToTriggerMatch:(BOOL)a8 visitCount:(int64_t)a9 lastVisitTime:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a10;
  v28.receiver = self;
  v28.super_class = WBSURLCompletionMatchSnapshot;
  v19 = [(WBSURLCompletionMatchSnapshot *)&v28 init];
  if (v19)
  {
    v20 = [v16 copy];
    url = v19->_url;
    v19->_url = v20;

    v22 = [v17 copy];
    title = v19->_title;
    v19->_title = v22;

    v24 = [(NSURL *)v19->_url safari_userVisibleString];
    userVisibleURLString = v19->_userVisibleURLString;
    v19->_userVisibleURLString = v24;

    v19->_topHit = a6;
    v19->_synthesizedTopHit = a7;
    v19->_topHitDueToTriggerMatch = a8;
    v19->_matchLocation = a5;
    v19->_visitCount = a9;
    objc_storeStrong(&v19->_lastVisitTime, a10);
    v26 = v19;
  }

  return v19;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p url = %@; title = %@; matchLocation = %d; topHit = %d; synthesizedTopHit = %d; topHitDueToTriggerMatch = %d; visitCount = %ld; lastVisitTime = %@>", v5, self, self->_url, self->_title, self->_matchLocation, self->_topHit, self->_synthesizedTopHit, self->_topHitDueToTriggerMatch, self->_visitCount, self->_lastVisitTime];;

  return v6;
}

- (WBSURLCompletionMatchSnapshot)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v7 = [v4 decodeIntegerForKey:@"matchLocation"];
  v8 = [v4 decodeBoolForKey:@"topHit"];
  v9 = [v4 decodeBoolForKey:@"synthesizedTopHit"];
  v10 = [v4 decodeBoolForKey:@"topHitDueToTriggerMatch"];
  v11 = [v4 decodeIntegerForKey:@"visitCount"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastVisitTime"];

  v13 = [(WBSURLCompletionMatchSnapshot *)self initWithURL:v5 title:v6 matchLocation:v7 isTopHit:v8 isSynthesizedTopHit:v9 isTopHitDueToTriggerMatch:v10 visitCount:v11 lastVisitTime:v12];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  url = self->_url;
  v5 = a3;
  [v5 encodeObject:url forKey:@"url"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeInteger:self->_matchLocation forKey:@"matchLocation"];
  [v5 encodeBool:self->_topHit forKey:@"topHit"];
  [v5 encodeBool:self->_synthesizedTopHit forKey:@"synthesizedTopHit"];
  [v5 encodeBool:self->_topHitDueToTriggerMatch forKey:@"topHitDueToTriggerMatch"];
  [v5 encodeInteger:self->_visitCount forKey:@"visitCount"];
  [v5 encodeObject:self->_lastVisitTime forKey:@"lastVisitTime"];
}

@end