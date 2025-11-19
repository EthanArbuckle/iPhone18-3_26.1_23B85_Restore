@interface USKXForm
- (USKXForm)initWithOperations:(id)a3 resetsStack:(BOOL)a4;
@end

@implementation USKXForm

- (USKXForm)initWithOperations:(id)a3 resetsStack:(BOOL)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = USKXForm;
  v10 = [(USKXForm *)&v14 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(v6, v7, v8, v9);
    operations = v10->_operations;
    v10->_operations = v11;

    v10->_resetsStack = a4;
  }

  return v10;
}

@end