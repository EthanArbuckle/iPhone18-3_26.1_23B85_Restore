@interface NSAttributedString(_UITextSearchingStyles)
+ (id)_systemTextSearchTextAttributesForStyle:()_UITextSearchingStyles;
@end

@implementation NSAttributedString(_UITextSearchingStyles)

+ (id)_systemTextSearchTextAttributesForStyle:()_UITextSearchingStyles
{
  v4 = [MEMORY[0x1E695DF90] dictionary];
  if (a3 == 2)
  {
    v5 = +[UIColor yellowColor];
  }

  else if (a3 == 1)
  {
    v5 = +[UIColor lightGrayColor];
  }

  else
  {
    if (a3)
    {
      goto LABEL_8;
    }

    v5 = +[UIColor clearColor];
  }

  v6 = v5;
  [v4 setObject:v5 forKeyedSubscript:*off_1E70EC8D0];

LABEL_8:

  return v4;
}

@end