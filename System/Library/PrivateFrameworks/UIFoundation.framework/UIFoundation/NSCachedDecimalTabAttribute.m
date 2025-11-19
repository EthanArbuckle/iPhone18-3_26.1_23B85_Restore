@interface NSCachedDecimalTabAttribute
@end

@implementation NSCachedDecimalTabAttribute

uint64_t ____NSCachedDecimalTabAttribute_block_invoke()
{
  v1 = +[NSTextTab columnTerminatorsForLocale:](NSTextTab, "columnTerminatorsForLocale:", [MEMORY[0x1E695DF58] currentLocale]);
  __NSCachedDecimalTabAttribute___NSDefaultDecimalTabOptions = [objc_allocWithZone(MEMORY[0x1E695DF20]) initWithObjects:&v1 forKeys:&NSTabColumnTerminatorsAttributeName count:1];
  result = _CFExecutableLinkedOnOrAfter();
  if (!result)
  {
    result = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    if ((result & 1) == 0)
    {
      __NSDecimalTabAlignment = 1;
    }
  }

  return result;
}

@end