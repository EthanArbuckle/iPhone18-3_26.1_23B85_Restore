@interface REMChangeObject
+ (BOOL)supportsSecureCoding;
- (BOOL)isCoalesced;
- (BOOL)isEqual:(id)a3;
- (NSSet)updatedProperties;
- (REMChangeObject)initWithCoder:(id)a3;
- (REMChangeTransaction)transaction;
- (id)coalescedChanges;
- (id)copyForCoalescing;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMChangeObject

+ (BOOL)supportsSecureCoding
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Abstract method called -[%@ %@]", v5, v6}];

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"Abstract method called -[%@ %@]", v6, v7}];
}

- (REMChangeObject)initWithCoder:(id)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"Abstract method called -[%@ %@]", v7, v8}];

  return 0;
}

- (BOOL)isEqual:(id)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = a3;
  v8 = objc_opt_class();
  v9 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"Abstract method called -[%@ %@]", v8, v9}];

  return self == v7;
}

- (BOOL)isCoalesced
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Abstract method called -[%@ %@]", v5, v6}];

  return 0;
}

- (id)coalescedChanges
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Abstract method called -[%@ %@]", v5, v6}];

  return 0;
}

- (id)copyForCoalescing
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Abstract method called -[%@ %@]", v5, v6}];

  return self;
}

- (NSSet)updatedProperties
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Abstract method called -[%@ %@]", v5, v6}];

  return 0;
}

- (REMChangeTransaction)transaction
{
  WeakRetained = objc_loadWeakRetained(&self->_transaction);

  return WeakRetained;
}

@end