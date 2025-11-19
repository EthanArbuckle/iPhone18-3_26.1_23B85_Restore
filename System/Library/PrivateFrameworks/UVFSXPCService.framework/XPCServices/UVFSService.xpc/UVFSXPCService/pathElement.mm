@interface pathElement
+ (id)pathElementFromName:(id)a3 withParentFH:(id)a4 withCookie:(unint64_t)a5 andWithCookieVerifier:(unint64_t)a6;
- (pathElement)initWithTheName:(id)a3 withParentFH:(id)a4 withCookie:(unint64_t)a5 andWithCookieVerifier:(unint64_t)a6;
@end

@implementation pathElement

- (pathElement)initWithTheName:(id)a3 withParentFH:(id)a4 withCookie:(unint64_t)a5 andWithCookieVerifier:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = [(pathElement *)self init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_elementName, a3);
    objc_storeStrong(&v14->_parentFH, a4);
    v14->_cookie = a5;
    v14->_cookieVerifier = a6;
  }

  return v14;
}

+ (id)pathElementFromName:(id)a3 withParentFH:(id)a4 withCookie:(unint64_t)a5 andWithCookieVerifier:(unint64_t)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [[a1 alloc] initWithTheName:v11 withParentFH:v10 withCookie:a5 andWithCookieVerifier:a6];

  return v12;
}

@end