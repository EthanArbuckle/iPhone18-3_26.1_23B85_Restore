@interface ICMusicSubscriptionFairPlayKeyStatus
- (BOOL)isEqual:(id)a3;
- (ICMusicSubscriptionFairPlayKeyStatus)initWithFairPlaySubscriptionInfo:(FPSubscriptionInfo_)a3;
- (id)description;
@end

@implementation ICMusicSubscriptionFairPlayKeyStatus

- (id)description
{
  v2 = @"NO";
  if (self->_hasOfflinePlaybackKeys)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  if (self->_hasOnlinePlaybackKeys)
  {
    v2 = @"YES";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%p> - accountUniqueIdentifier: %llu - hasOfflinePlaybackKeys=%@ - hasOnlinePlaybackKeys=%@", self, self->_accountUniqueIdentifier, v3, v2];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_hasOfflinePlaybackKeys == v4[9] && self->_hasOnlinePlaybackKeys == v4[8];

  return v5;
}

- (ICMusicSubscriptionFairPlayKeyStatus)initWithFairPlaySubscriptionInfo:(FPSubscriptionInfo_)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  result = [(ICMusicSubscriptionFairPlayKeyStatus *)self init];
  if (result)
  {
    result->_accountUniqueIdentifier = var0;
    result->_hasOfflinePlaybackKeys = (var1 & 0xFFFFFFFE) == 2;
    result->_hasOnlinePlaybackKeys = (var1 & 0xFFFFFFFD) == 1;
  }

  return result;
}

@end