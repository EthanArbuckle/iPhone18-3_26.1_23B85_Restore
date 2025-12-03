@interface SSTermMatchResult
- (SSTermMatchResult)initWithMatch:(id)match start:(int)start end:(int)end score:(int)score pos:(id)pos;
- (id)description;
@end

@implementation SSTermMatchResult

- (SSTermMatchResult)initWithMatch:(id)match start:(int)start end:(int)end score:(int)score pos:(id)pos
{
  matchCopy = match;
  posCopy = pos;
  v20.receiver = self;
  v20.super_class = SSTermMatchResult;
  v15 = [(SSTermMatchResult *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_term, match);
    v16->_start = start;
    v16->_end = end;
    v16->_score = score;
    v17 = [posCopy sortedArrayUsingSelector:sel_compare_];
    pos = v16->_pos;
    v16->_pos = v17;
  }

  return v16;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  term = self->_term;
  start = self->_start;
  end = self->_end;
  score = self->_score;
  v7 = [(NSArray *)self->_pos componentsJoinedByString:@", "];
  v8 = [v2 stringWithFormat:@"term: %@, start: %d, end: %d, score: %d, pos: %@", term, start, end, score, v7];

  return v8;
}

@end