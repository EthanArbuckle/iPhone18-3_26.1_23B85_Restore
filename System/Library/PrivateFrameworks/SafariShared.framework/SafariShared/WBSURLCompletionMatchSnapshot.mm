@interface WBSURLCompletionMatchSnapshot
- (NSString)description;
- (WBSURLCompletionMatchSnapshot)initWithCoder:(id)coder;
- (WBSURLCompletionMatchSnapshot)initWithURL:(id)l title:(id)title matchLocation:(int64_t)location isTopHit:(BOOL)hit isSynthesizedTopHit:(BOOL)topHit isTopHitDueToTriggerMatch:(BOOL)match visitCount:(int64_t)count lastVisitTime:(id)self0;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSURLCompletionMatchSnapshot

- (WBSURLCompletionMatchSnapshot)initWithURL:(id)l title:(id)title matchLocation:(int64_t)location isTopHit:(BOOL)hit isSynthesizedTopHit:(BOOL)topHit isTopHitDueToTriggerMatch:(BOOL)match visitCount:(int64_t)count lastVisitTime:(id)self0
{
  lCopy = l;
  titleCopy = title;
  timeCopy = time;
  v28.receiver = self;
  v28.super_class = WBSURLCompletionMatchSnapshot;
  v19 = [(WBSURLCompletionMatchSnapshot *)&v28 init];
  if (v19)
  {
    v20 = [lCopy copy];
    url = v19->_url;
    v19->_url = v20;

    v22 = [titleCopy copy];
    title = v19->_title;
    v19->_title = v22;

    safari_userVisibleString = [(NSURL *)v19->_url safari_userVisibleString];
    userVisibleURLString = v19->_userVisibleURLString;
    v19->_userVisibleURLString = safari_userVisibleString;

    v19->_topHit = hit;
    v19->_synthesizedTopHit = topHit;
    v19->_topHitDueToTriggerMatch = match;
    v19->_matchLocation = location;
    v19->_visitCount = count;
    objc_storeStrong(&v19->_lastVisitTime, time);
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

- (WBSURLCompletionMatchSnapshot)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v7 = [coderCopy decodeIntegerForKey:@"matchLocation"];
  v8 = [coderCopy decodeBoolForKey:@"topHit"];
  v9 = [coderCopy decodeBoolForKey:@"synthesizedTopHit"];
  v10 = [coderCopy decodeBoolForKey:@"topHitDueToTriggerMatch"];
  v11 = [coderCopy decodeIntegerForKey:@"visitCount"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastVisitTime"];

  v13 = [(WBSURLCompletionMatchSnapshot *)self initWithURL:v5 title:v6 matchLocation:v7 isTopHit:v8 isSynthesizedTopHit:v9 isTopHitDueToTriggerMatch:v10 visitCount:v11 lastVisitTime:v12];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  url = self->_url;
  coderCopy = coder;
  [coderCopy encodeObject:url forKey:@"url"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeInteger:self->_matchLocation forKey:@"matchLocation"];
  [coderCopy encodeBool:self->_topHit forKey:@"topHit"];
  [coderCopy encodeBool:self->_synthesizedTopHit forKey:@"synthesizedTopHit"];
  [coderCopy encodeBool:self->_topHitDueToTriggerMatch forKey:@"topHitDueToTriggerMatch"];
  [coderCopy encodeInteger:self->_visitCount forKey:@"visitCount"];
  [coderCopy encodeObject:self->_lastVisitTime forKey:@"lastVisitTime"];
}

@end