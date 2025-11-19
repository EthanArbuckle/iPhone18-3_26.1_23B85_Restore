@interface TSCH3DSelectionPath
+ (id)selectionPathWithClass:(Class)a3 styleIndex:(unint64_t)a4 selectionPath:(id)a5;
+ (id)selectionPathWithClass:(Class)a3 styleIndex:(unint64_t)a4 type:(id)a5 name:(id)a6 arguments:(id)a7;
- (TSCH3DSelectionPath)initWithClass:(Class)a3 styleIndex:(unint64_t)a4 type:(id)a5 name:(id)a6 arguments:(id)a7;
@end

@implementation TSCH3DSelectionPath

+ (id)selectionPathWithClass:(Class)a3 styleIndex:(unint64_t)a4 type:(id)a5 name:(id)a6 arguments:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [a1 alloc];
  v20 = objc_msgSend_initWithClass_styleIndex_type_name_arguments_(v15, v16, v17, v18, v19, a3, a4, v12, v13, v14);

  return v20;
}

+ (id)selectionPathWithClass:(Class)a3 styleIndex:(unint64_t)a4 selectionPath:(id)a5
{
  v8 = a5;
  v9 = [a1 alloc];
  v14 = objc_msgSend_type(v8, v10, v11, v12, v13);
  v19 = objc_msgSend_name(v8, v15, v16, v17, v18);
  v24 = objc_msgSend_initWithClass_styleIndex_type_name_arguments_(v9, v20, v21, v22, v23, a3, a4, v14, v19, v8[2]);

  return v24;
}

- (TSCH3DSelectionPath)initWithClass:(Class)a3 styleIndex:(unint64_t)a4 type:(id)a5 name:(id)a6 arguments:(id)a7
{
  v10.receiver = self;
  v10.super_class = TSCH3DSelectionPath;
  result = [(TSCHSelectionPath *)&v10 initWithType:a5 name:a6 arguments:a7];
  if (result)
  {
    result->_sceneObjectClass = a3;
    result->_styleIndex = a4;
  }

  return result;
}

@end