@interface SSTermMatchResult
- (SSTermMatchResult)initWithMatch:(id)a3 start:(int)a4 end:(int)a5 score:(int)a6 pos:(id)a7;
- (id)description;
@end

@implementation SSTermMatchResult

- (SSTermMatchResult)initWithMatch:(id)a3 start:(int)a4 end:(int)a5 score:(int)a6 pos:(id)a7
{
  v13 = a3;
  v14 = a7;
  v20.receiver = self;
  v20.super_class = SSTermMatchResult;
  v15 = [(SSTermMatchResult *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_term, a3);
    v16->_start = a4;
    v16->_end = a5;
    v16->_score = a6;
    v17 = [v14 sortedArrayUsingSelector:sel_compare_];
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