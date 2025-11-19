@interface NSLayoutConstraint(PGAdditions)
+ (id)PG_constraintWithItem:()PGAdditions attribute:relatedBy:toItem:attribute:multiplier:constant:priority:;
@end

@implementation NSLayoutConstraint(PGAdditions)

+ (id)PG_constraintWithItem:()PGAdditions attribute:relatedBy:toItem:attribute:multiplier:constant:priority:
{
  v5 = [a1 constraintWithItem:? attribute:? relatedBy:? toItem:? attribute:? multiplier:? constant:?];
  *&v6 = a4;
  [v5 setPriority:v6];

  return v5;
}

@end