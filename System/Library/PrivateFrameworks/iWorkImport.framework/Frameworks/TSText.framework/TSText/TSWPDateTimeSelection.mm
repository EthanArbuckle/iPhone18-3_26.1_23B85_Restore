@interface TSWPDateTimeSelection
+ (TSWPDateTimeSelection)selectionWithDateTimeField:(id)field rep:(id)rep;
- (TSWPDateTimeSelection)initWithDateTimeField:(id)field rep:(id)rep;
- (TSWPDateTimeSmartField)dateTimeField;
- (id)description;
@end

@implementation TSWPDateTimeSelection

+ (TSWPDateTimeSelection)selectionWithDateTimeField:(id)field rep:(id)rep
{
  repCopy = rep;
  fieldCopy = field;
  v7 = [TSWPDateTimeSelection alloc];
  v9 = objc_msgSend_initWithDateTimeField_rep_(v7, v8, fieldCopy, repCopy);

  return v9;
}

- (TSWPDateTimeSelection)initWithDateTimeField:(id)field rep:(id)rep
{
  fieldCopy = field;
  repCopy = rep;
  v11.receiver = self;
  v11.super_class = TSWPDateTimeSelection;
  v8 = [(TSWPDateTimeSelection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_dateTimeField, fieldCopy);
    objc_storeStrong(&v9->_dateTimeRep, rep);
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = TSWPDateTimeSelection;
  v4 = [(TSWPDateTimeSelection *)&v9 description];
  WeakRetained = objc_loadWeakRetained(&self->_dateTimeField);
  v7 = objc_msgSend_stringWithFormat_(v3, v6, @"%@ dateTimeField = %p, rep = %p", v4, WeakRetained, self->_dateTimeRep);

  return v7;
}

- (TSWPDateTimeSmartField)dateTimeField
{
  WeakRetained = objc_loadWeakRetained(&self->_dateTimeField);

  return WeakRetained;
}

@end