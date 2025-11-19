@interface PPScoredEvent
- (PPScoredEvent)initWithCoder:(id)a3;
- (PPScoredEvent)initWithStartDate:(id)a3 endDate:(id)a4 title:(id)a5 score:(double)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  startDate = self->_startDate;
  v5 = a3;
  [v5 encodeObject:startDate forKey:@"sdt"];
  [v5 encodeObject:self->_endDate forKey:@"edt"];
  [v5 encodeObject:self->_title forKey:@"ttl"];
  [v5 encodeDouble:@"sco" forKey:self->_score];
}

- (PPScoredEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v4 decodeObjectOfClass:v6 forKey:@"sdt"];
  v8 = [v4 decodeObjectOfClass:v6 forKey:@"edt"];
  v9 = [v4 decodeObjectOfClass:v5 forKey:@"ttl"];
  [v4 decodeDoubleForKey:@"sco"];
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
    v13 = 0;
  }

  else
  {
    self = [(PPScoredEvent *)self initWithStartDate:v7 endDate:v8 title:v9 score:v11];
    v13 = self;
  }

  return v13;
}

- (PPScoredEvent)initWithStartDate:(id)a3 endDate:(id)a4 title:(id)a5 score:(double)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = PPScoredEvent;
  v14 = [(PPScoredEvent *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_startDate, a3);
    objc_storeStrong(&v15->_endDate, a4);
    objc_storeStrong(&v15->_title, a5);
    v15->_score = a6;
  }

  return v15;
}

@end