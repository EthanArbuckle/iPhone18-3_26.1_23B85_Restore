@interface ICLiveLinkPlaybackEvent
- (ICLiveLinkPlaybackEvent)initWithKind:(int64_t)kind;
- (id)description;
@end

@implementation ICLiveLinkPlaybackEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  kind = self->_kind;
  if (kind >= 5)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown/kind=%ld", self->_kind];
  }

  else
  {
    v5 = off_1E7BF85E0[kind];
  }

  v6 = [v3 stringWithFormat:@"<ICLiveLinkPlaybackEvent: %p kind=%@>", self, v5];

  return v6;
}

- (ICLiveLinkPlaybackEvent)initWithKind:(int64_t)kind
{
  v5.receiver = self;
  v5.super_class = ICLiveLinkPlaybackEvent;
  result = [(ICLiveLinkPlaybackEvent *)&v5 init];
  if (result)
  {
    result->_kind = kind;
  }

  return result;
}

@end