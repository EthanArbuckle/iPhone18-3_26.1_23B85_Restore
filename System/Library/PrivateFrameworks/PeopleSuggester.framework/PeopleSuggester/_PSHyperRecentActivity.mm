@interface _PSHyperRecentActivity
- (_PSHyperRecentActivity)initWithDate:(id)date activityType:(int64_t)type conversationId:(id)id;
@end

@implementation _PSHyperRecentActivity

- (_PSHyperRecentActivity)initWithDate:(id)date activityType:(int64_t)type conversationId:(id)id
{
  dateCopy = date;
  idCopy = id;
  v16.receiver = self;
  v16.super_class = _PSHyperRecentActivity;
  v11 = [(_PSHyperRecentActivity *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_date, date);
    v12->_activityType = type;
    v13 = [idCopy copy];
    conversationId = v12->_conversationId;
    v12->_conversationId = v13;
  }

  return v12;
}

@end