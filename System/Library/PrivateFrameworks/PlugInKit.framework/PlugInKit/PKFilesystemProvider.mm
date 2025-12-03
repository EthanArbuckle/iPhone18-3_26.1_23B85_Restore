@interface PKFilesystemProvider
- (PKNSBundleProxy)mainBundle;
- (id)bundleWithURL:(id)l;
- (id)contentsOfDirectoryAtURL:(id)l includingPropertiesForKeys:(id)keys options:(unint64_t)options error:(id *)error;
- (id)dataWithContentsOfURL:(id)l options:(unint64_t)options error:(id *)error;
@end

@implementation PKFilesystemProvider

- (PKNSBundleProxy)mainBundle
{
  v2 = [PKNSBundleProxy alloc];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [(PKNSBundleProxy *)v2 initWithNSBundle:mainBundle];

  return v4;
}

- (id)bundleWithURL:(id)l
{
  lCopy = l;
  v4 = [PKNSBundleProxy alloc];
  v5 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithURL:lCopy];

  v6 = [(PKNSBundleProxy *)v4 initWithNSBundle:v5];

  return v6;
}

- (id)dataWithContentsOfURL:(id)l options:(unint64_t)options error:(id *)error
{
  v7 = MEMORY[0x1E695DEF0];
  lCopy = l;
  v9 = [[v7 alloc] initWithContentsOfURL:lCopy options:options error:error];

  return v9;
}

- (id)contentsOfDirectoryAtURL:(id)l includingPropertiesForKeys:(id)keys options:(unint64_t)options error:(id *)error
{
  v9 = MEMORY[0x1E696AC08];
  keysCopy = keys;
  lCopy = l;
  defaultManager = [v9 defaultManager];
  v13 = [defaultManager contentsOfDirectoryAtURL:lCopy includingPropertiesForKeys:keysCopy options:options error:error];

  return v13;
}

@end