@interface ATXUIFeedbackMetricsQuery
- (ATXUIFeedbackMetricsQuery)init;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXUIFeedbackMetricsQuery:(id)a3;
- (unint64_t)hash;
@end

@implementation ATXUIFeedbackMetricsQuery

- (ATXUIFeedbackMetricsQuery)init
{
  v8.receiver = self;
  v8.super_class = ATXUIFeedbackMetricsQuery;
  v2 = [(ATXUIFeedbackMetricsQuery *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-604800.0];
    startDate = v2->_startDate;
    v2->_startDate = v3;

    v5 = [MEMORY[0x1E695DF00] now];
    endDate = v2->_endDate;
    v2->_endDate = v5;
  }

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXUIFeedbackMetricsQuery *)self isEqualToATXUIFeedbackMetricsQuery:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXUIFeedbackMetricsQuery:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_clientModelType != v4[4] || self->_consumerSubType != *(v4 + 8))
  {
    goto LABEL_5;
  }

  v6 = self->_startDate;
  v7 = v6;
  if (v6 == v5[2])
  {
  }

  else
  {
    v8 = [(NSDate *)v6 isEqual:?];

    if ((v8 & 1) == 0)
    {
LABEL_5:
      v9 = 0;
      goto LABEL_6;
    }
  }

  v11 = self->_endDate;
  v12 = v11;
  if (v11 == v5[3])
  {
    v9 = 1;
  }

  else
  {
    v9 = [(NSDate *)v11 isEqual:?];
  }

LABEL_6:
  return v9;
}

- (unint64_t)hash
{
  v3 = self->_consumerSubType - self->_clientModelType + 32 * self->_clientModelType;
  v4 = [(NSDate *)self->_startDate hash]- v3 + 32 * v3;
  return [(NSDate *)self->_endDate hash]- v4 + 32 * v4;
}

@end