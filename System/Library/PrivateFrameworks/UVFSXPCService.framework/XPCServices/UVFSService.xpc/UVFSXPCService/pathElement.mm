@interface pathElement
+ (id)pathElementFromName:(id)name withParentFH:(id)h withCookie:(unint64_t)cookie andWithCookieVerifier:(unint64_t)verifier;
- (pathElement)initWithTheName:(id)name withParentFH:(id)h withCookie:(unint64_t)cookie andWithCookieVerifier:(unint64_t)verifier;
@end

@implementation pathElement

- (pathElement)initWithTheName:(id)name withParentFH:(id)h withCookie:(unint64_t)cookie andWithCookieVerifier:(unint64_t)verifier
{
  nameCopy = name;
  hCopy = h;
  v13 = [(pathElement *)self init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_elementName, name);
    objc_storeStrong(&v14->_parentFH, h);
    v14->_cookie = cookie;
    v14->_cookieVerifier = verifier;
  }

  return v14;
}

+ (id)pathElementFromName:(id)name withParentFH:(id)h withCookie:(unint64_t)cookie andWithCookieVerifier:(unint64_t)verifier
{
  hCopy = h;
  nameCopy = name;
  v12 = [[self alloc] initWithTheName:nameCopy withParentFH:hCopy withCookie:cookie andWithCookieVerifier:verifier];

  return v12;
}

@end