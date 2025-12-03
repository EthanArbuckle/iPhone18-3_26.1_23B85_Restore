@interface TSCH3DSelectionPath
+ (id)selectionPathWithClass:(Class)class styleIndex:(unint64_t)index selectionPath:(id)path;
+ (id)selectionPathWithClass:(Class)class styleIndex:(unint64_t)index type:(id)type name:(id)name arguments:(id)arguments;
- (TSCH3DSelectionPath)initWithClass:(Class)class styleIndex:(unint64_t)index type:(id)type name:(id)name arguments:(id)arguments;
@end

@implementation TSCH3DSelectionPath

+ (id)selectionPathWithClass:(Class)class styleIndex:(unint64_t)index type:(id)type name:(id)name arguments:(id)arguments
{
  typeCopy = type;
  nameCopy = name;
  argumentsCopy = arguments;
  v15 = [self alloc];
  v20 = objc_msgSend_initWithClass_styleIndex_type_name_arguments_(v15, v16, v17, v18, v19, class, index, typeCopy, nameCopy, argumentsCopy);

  return v20;
}

+ (id)selectionPathWithClass:(Class)class styleIndex:(unint64_t)index selectionPath:(id)path
{
  pathCopy = path;
  v9 = [self alloc];
  v14 = objc_msgSend_type(pathCopy, v10, v11, v12, v13);
  v19 = objc_msgSend_name(pathCopy, v15, v16, v17, v18);
  v24 = objc_msgSend_initWithClass_styleIndex_type_name_arguments_(v9, v20, v21, v22, v23, class, index, v14, v19, pathCopy[2]);

  return v24;
}

- (TSCH3DSelectionPath)initWithClass:(Class)class styleIndex:(unint64_t)index type:(id)type name:(id)name arguments:(id)arguments
{
  v10.receiver = self;
  v10.super_class = TSCH3DSelectionPath;
  result = [(TSCHSelectionPath *)&v10 initWithType:type name:name arguments:arguments];
  if (result)
  {
    result->_sceneObjectClass = class;
    result->_styleIndex = index;
  }

  return result;
}

@end