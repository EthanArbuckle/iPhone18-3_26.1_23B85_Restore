@interface TSTEphemeralFilter
+ (id)filterWithIndex:(unint64_t)a3 baseColumnIndex:(TSUModelColumnIndex)a4 rules:(id)a5;
- (TSTEphemeralFilter)filterWithRule:(id)a3 atIndex:(unint64_t)a4;
- (TSTEphemeralFilter)initWithIndex:(unint64_t)a3 baseColumnIndex:(TSUModelColumnIndex)a4 rules:(id)a5;
- (id)description;
- (id)filterByAddingRule:(id)a3;
- (id)filterByClearingRules;
- (id)filterByRemovingRuleAtIndex:(unint64_t)a3;
@end

@implementation TSTEphemeralFilter

+ (id)filterWithIndex:(unint64_t)a3 baseColumnIndex:(TSUModelColumnIndex)a4 rules:(id)a5
{
  v7 = a5;
  v8 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend_initWithIndex_baseColumnIndex_rules_(v8, v9, a3, a4._column, v7);

  return v10;
}

- (TSTEphemeralFilter)initWithIndex:(unint64_t)a3 baseColumnIndex:(TSUModelColumnIndex)a4 rules:(id)a5
{
  v8 = a5;
  v17.receiver = self;
  v17.super_class = TSTEphemeralFilter;
  v9 = [(TSTEphemeralFilter *)&v17 init];
  v10 = v9;
  if (v9)
  {
    v9->_filterIndex = a3;
    v9->_baseColumnIndex = a4;
    v11 = objc_alloc(MEMORY[0x277CBEA60]);
    v14 = objc_msgSend_initWithArray_copyItems_(v11, v12, v8, 1, v13);
    rules = v10->_rules;
    v10->_rules = v14;
  }

  return v10;
}

- (TSTEphemeralFilter)filterWithRule:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v10 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v7, self->_rules, v8, v9);
  objc_msgSend_setObject_atIndexedSubscript_(v10, v11, v6, a4, v12);
  v13 = objc_opt_class();
  v15 = objc_msgSend_filterWithIndex_baseColumnIndex_rules_(v13, v14, self->_filterIndex, self->_baseColumnIndex._column, v10);

  return v15;
}

- (id)filterByAddingRule:(id)a3
{
  v6 = objc_msgSend_arrayByAddingObject_(self->_rules, a2, a3, v3, v4);
  v7 = objc_opt_class();
  v9 = objc_msgSend_filterWithIndex_baseColumnIndex_rules_(v7, v8, self->_filterIndex, self->_baseColumnIndex._column, v6);

  return v9;
}

- (id)filterByRemovingRuleAtIndex:(unint64_t)a3
{
  v7 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], a2, self->_rules, v3, v4);
  objc_msgSend_removeObjectAtIndex_(v7, v8, a3, v9, v10);
  v11 = objc_opt_class();
  v13 = objc_msgSend_filterWithIndex_baseColumnIndex_rules_(v11, v12, self->_filterIndex, self->_baseColumnIndex._column, v7);

  return v13;
}

- (id)filterByClearingRules
{
  v3 = objc_opt_class();
  filterIndex = self->_filterIndex;
  column = self->_baseColumnIndex._column;
  v7 = MEMORY[0x277CBEBF8];

  return objc_msgSend_filterWithIndex_baseColumnIndex_rules_(v3, v4, filterIndex, column, v7);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v9 = objc_msgSend_stringWithFormat_(v3, v6, @"<%@:%p index %lu baseCol %u rules %@", v7, v8, v5, self, self->_filterIndex, self->_baseColumnIndex._column, self->_rules);

  return v9;
}

@end