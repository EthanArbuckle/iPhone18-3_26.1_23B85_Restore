@interface UIAccessibilityInMemoryStringBasedTreeLogger
- (UIAccessibilityInMemoryStringBasedTreeLogger)initWithPrefix:(id)a3 elementDescriptionKey:(id)a4;
- (id)stringRepresentation;
- (void)logElement:(id)a3;
@end

@implementation UIAccessibilityInMemoryStringBasedTreeLogger

- (UIAccessibilityInMemoryStringBasedTreeLogger)initWithPrefix:(id)a3 elementDescriptionKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (![v8 length])
  {
    [UIAccessibilityInMemoryStringBasedTreeLogger initWithPrefix:a2 elementDescriptionKey:self];
  }

  v19.receiver = self;
  v19.super_class = UIAccessibilityInMemoryStringBasedTreeLogger;
  v9 = [(UIAccessibilityInMemoryStringBasedTreeLogger *)&v19 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E696AD60]);
    stringRepresentation = v9->_stringRepresentation;
    v9->_stringRepresentation = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    currentPrefix = v9->_currentPrefix;
    v9->_currentPrefix = v12;

    v14 = [v7 copy];
    prefix = v9->_prefix;
    v9->_prefix = v14;

    v16 = [v8 copy];
    descriptionKey = v9->_descriptionKey;
    v9->_descriptionKey = v16;
  }

  return v9;
}

- (id)stringRepresentation
{
  v2 = [(NSMutableString *)self->_stringRepresentation copy];

  return v2;
}

- (void)logElement:(id)a3
{
  currentPrefix = self->_currentPrefix;
  v5 = a3;
  v8 = [(NSMutableArray *)currentPrefix componentsJoinedByString:&stru_1F1DB9E20];
  objc_opt_class();
  v6 = [v5 safeValueForKey:self->_descriptionKey];

  v7 = __UIAccessibilityCastAsClass();

  [(NSMutableString *)self->_stringRepresentation appendFormat:@"%@ %@\n", v8, v7];
}

- (void)initWithPrefix:(uint64_t)a1 elementDescriptionKey:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"UIAccessibilityInMemoryStringBasedTreeLogger.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"[descriptionKey length] > 0"}];
}

@end