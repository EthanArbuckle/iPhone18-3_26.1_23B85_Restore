@interface _PSHyperRecentActivity
- (_PSHyperRecentActivity)initWithDate:(id)a3 activityType:(int64_t)a4 conversationId:(id)a5;
@end

@implementation _PSHyperRecentActivity

- (_PSHyperRecentActivity)initWithDate:(id)a3 activityType:(int64_t)a4 conversationId:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = _PSHyperRecentActivity;
  v11 = [(_PSHyperRecentActivity *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_date, a3);
    v12->_activityType = a4;
    v13 = [v10 copy];
    conversationId = v12->_conversationId;
    v12->_conversationId = v13;
  }

  return v12;
}

@end