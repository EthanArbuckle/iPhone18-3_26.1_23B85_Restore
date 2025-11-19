@interface _UIDestructionConditionSetBSXPCCodingAdapter
- (_UIDestructionConditionSetBSXPCCodingAdapter)initWithBSXPCCoder:(id)a3;
@end

@implementation _UIDestructionConditionSetBSXPCCodingAdapter

- (_UIDestructionConditionSetBSXPCCodingAdapter)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v9.receiver = self;
  v9.super_class = _UIDestructionConditionSetBSXPCCodingAdapter;
  v7 = [(_UIAbstractBSXPCCodingAdapter *)&v9 initWithBSXPCCoder:v4 collectionOfClass:v5 containingClass:v6];

  return v7;
}

@end