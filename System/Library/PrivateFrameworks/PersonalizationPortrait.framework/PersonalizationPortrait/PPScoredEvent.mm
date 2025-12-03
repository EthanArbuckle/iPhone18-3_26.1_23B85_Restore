@interface PPScoredEvent
- (PPScoredEvent)initWithCoder:(id)coder;
- (PPScoredEvent)initWithStartDate:(id)date endDate:(id)endDate title:(id)title score:(double)score;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPScoredEvent

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ t:'%@' start:'%@' end:'%@' s:'%f'", v5, self->_title, self->_startDate, self->_endDate, *&self->_score];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  startDate = self->_startDate;
  coderCopy = coder;
  [coderCopy encodeObject:startDate forKey:@"sdt"];
  [coderCopy encodeObject:self->_endDate forKey:@"edt"];
  [coderCopy encodeObject:self->_title forKey:@"ttl"];
  [coderCopy encodeDouble:@"sco" forKey:self->_score];
}

- (PPScoredEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"sdt"];
  v8 = [coderCopy decodeObjectOfClass:v6 forKey:@"edt"];
  v9 = [coderCopy decodeObjectOfClass:v5 forKey:@"ttl"];
  [coderCopy decodeDoubleForKey:@"sco"];
  v11 = v10;

  if (v7)
  {
    v12 = v8 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PPScoredEvent *)self initWithStartDate:v7 endDate:v8 title:v9 score:v11];
    selfCopy = self;
  }

  return selfCopy;
}

- (PPScoredEvent)initWithStartDate:(id)date endDate:(id)endDate title:(id)title score:(double)score
{
  dateCopy = date;
  endDateCopy = endDate;
  titleCopy = title;
  v17.receiver = self;
  v17.super_class = PPScoredEvent;
  v14 = [(PPScoredEvent *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_startDate, date);
    objc_storeStrong(&v15->_endDate, endDate);
    objc_storeStrong(&v15->_title, title);
    v15->_score = score;
  }

  return v15;
}

@end