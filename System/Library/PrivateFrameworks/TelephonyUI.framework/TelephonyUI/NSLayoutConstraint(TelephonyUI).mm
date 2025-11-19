@interface NSLayoutConstraint(TelephonyUI)
+ (id)constraintWithItem:()TelephonyUI attribute:relatedBy:toItem:attribute:multiplier:constant:priority:;
@end

@implementation NSLayoutConstraint(TelephonyUI)

+ (id)constraintWithItem:()TelephonyUI attribute:relatedBy:toItem:attribute:multiplier:constant:priority:
{
  v4 = [MEMORY[0x1E696ACD8] constraintWithItem:? attribute:? relatedBy:? toItem:? attribute:? multiplier:? constant:?];
  *&v5 = a3;
  [v4 setPriority:v5];

  return v4;
}

@end