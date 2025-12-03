@interface PUITextLayoutSet
+ (id)supportedTextLayoutSetForRole:(id)role;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PUITextLayoutSet)initWithBSXPCCoder:(id)coder;
- (PUITextLayoutSet)initWithCoder:(id)coder;
- (PUITextLayoutSet)initWithTextLayout:(unint64_t)layout;
- (PUITextLayoutSet)initWithTextLayouts:(id)layouts;
- (PUITextLayoutSet)initWithTextLayoutsIndexSet:(id)set;
- (id)copyWithZone:(_NSZone *)zone;
- (id)textLayoutSetByAddingTextLayout:(unint64_t)layout;
@end

@implementation PUITextLayoutSet

+ (id)supportedTextLayoutSetForRole:(id)role
{
  v3 = [role isEqual:*MEMORY[0x1E69C5218]];
  v4 = [PUITextLayoutSet alloc];
  if (v3)
  {
    v5 = &unk_1F1C92CB0;
  }

  else
  {
    v5 = &unk_1F1C92CC8;
  }

  v6 = [(PUITextLayoutSet *)v4 initWithTextLayouts:v5];

  return v6;
}

- (PUITextLayoutSet)initWithTextLayoutsIndexSet:(id)set
{
  setCopy = set;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__PUITextLayoutSet_initWithTextLayoutsIndexSet___block_invoke;
  v12[3] = &unk_1E7855088;
  v14 = a2;
  selfCopy = self;
  v13 = selfCopy;
  [setCopy enumerateIndexesUsingBlock:v12];
  v11.receiver = selfCopy;
  v11.super_class = PUITextLayoutSet;
  v7 = [(PUITextLayoutSet *)&v11 init];
  if (v7)
  {
    v8 = [setCopy mutableCopy];
    titleLayoutSetStorage = v7->_titleLayoutSetStorage;
    v7->_titleLayoutSetStorage = v8;

    PUITextLayoutSetSharedInit(v7);
  }

  return v7;
}

BOOL __48__PUITextLayoutSet_initWithTextLayoutsIndexSet___block_invoke(uint64_t a1, unint64_t a2)
{
  result = PUITextLayoutIsValid(a2);
  if (!result)
  {
    __48__PUITextLayoutSet_initWithTextLayoutsIndexSet___block_invoke_cold_1(a2, a1);
  }

  return result;
}

- (PUITextLayoutSet)initWithTextLayouts:(id)layouts
{
  layoutsCopy = layouts;
  v12.receiver = self;
  v12.super_class = PUITextLayoutSet;
  v6 = [(PUITextLayoutSet *)&v12 init];
  v7 = v6;
  if (v6)
  {
    PUITextLayoutSetSharedInit(v6);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __40__PUITextLayoutSet_initWithTextLayouts___block_invoke;
    v9[3] = &unk_1E78550B0;
    v11 = a2;
    v10 = v7;
    [layoutsCopy enumerateObjectsUsingBlock:v9];
  }

  return v7;
}

void __40__PUITextLayoutSet_initWithTextLayouts___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 unsignedIntValue];
  if (!PUITextLayoutIsValid(v3))
  {
    __40__PUITextLayoutSet_initWithTextLayouts___block_invoke_cold_1(v3, a1);
  }

  [*(*(a1 + 32) + 8) addIndex:v3];
}

- (PUITextLayoutSet)initWithTextLayout:(unint64_t)layout
{
  if (!PUITextLayoutIsValid(layout))
  {
    [(PUITextLayoutSet *)layout initWithTextLayout:a2];
  }

  v9.receiver = self;
  v9.super_class = PUITextLayoutSet;
  v6 = [(PUITextLayoutSet *)&v9 init];
  v7 = v6;
  if (v6)
  {
    PUITextLayoutSetSharedInit(v6);
    [(NSMutableIndexSet *)v7->_titleLayoutSetStorage addIndex:layout];
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  p_isa = &equalCopy->super.isa;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (equalCopy == self)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [p_isa[1] isEqual:self->_titleLayoutSetStorage];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (id)textLayoutSetByAddingTextLayout:(unint64_t)layout
{
  if ([(PUITextLayoutSet *)self containsTextLayout:?]|| !PUITextLayoutIsValid(layout))
  {
    selfCopy = self;
  }

  else
  {
    v5 = [(NSMutableIndexSet *)self->_titleLayoutSetStorage mutableCopy];
    [v5 addIndex:layout];
    selfCopy = [[PUITextLayoutSet alloc] initWithTextLayoutsIndexSet:v5];
  }

  return selfCopy;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = objc_opt_new();
  if ([(PUITextLayoutSet *)self containsTextLayout:1])
  {
    [v4 addObject:@"PUITextLayoutVerticalTopRight"];
  }

  if ([(PUITextLayoutSet *)self containsTextLayout:1])
  {
    [v4 addObject:@"PUITextLayoutVerticalTopRight"];
  }

  [v3 appendArraySection:v4 withName:@"supportedTextLayouts" skipIfEmpty:1];
  build = [v3 build];

  return build;
}

- (PUITextLayoutSet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_titleLayoutSetStorage"];

  v6 = [(PUITextLayoutSet *)self initWithTextLayoutsIndexSet:v5];
  return v6;
}

- (PUITextLayoutSet)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_titleLayoutSetStorage"];

  v6 = [(PUITextLayoutSet *)self initWithTextLayoutsIndexSet:v5];
  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PUITextLayoutSet allocWithZone:zone];
  titleLayoutSetStorage = self->_titleLayoutSetStorage;

  return [(PUITextLayoutSet *)v4 initWithTextLayoutsIndexSet:titleLayoutSetStorage];
}

void __48__PUITextLayoutSet_initWithTextLayoutsIndexSet___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PUITextLayout '%lu' is not valid"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(*(a2 + 40));
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, a1, v13, v14);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __40__PUITextLayoutSet_initWithTextLayouts___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PUITextLayout '%lu' is not valid"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(*(a2 + 40));
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, a1, v13, v14);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithTextLayout:(uint64_t)a1 .cold.1(uint64_t a1, const char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PUITextLayout '%lu' is not valid"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = objc_opt_class();
    v13 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, 2u);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end