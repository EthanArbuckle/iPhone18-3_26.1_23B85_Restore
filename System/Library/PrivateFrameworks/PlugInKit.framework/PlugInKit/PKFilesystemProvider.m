@interface PKFilesystemProvider
- (PKNSBundleProxy)mainBundle;
- (id)bundleWithURL:(id)a3;
- (id)contentsOfDirectoryAtURL:(id)a3 includingPropertiesForKeys:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (id)dataWithContentsOfURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
@end

@implementation PKFilesystemProvider

- (PKNSBundleProxy)mainBundle
{
  v2 = [PKNSBundleProxy alloc];
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [(PKNSBundleProxy *)v2 initWithNSBundle:v3];

  return v4;
}

- (id)bundleWithURL:(id)a3
{
  v3 = a3;
  v4 = [PKNSBundleProxy alloc];
  v5 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithURL:v3];

  v6 = [(PKNSBundleProxy *)v4 initWithNSBundle:v5];

  return v6;
}

- (id)dataWithContentsOfURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v7 = MEMORY[0x1E695DEF0];
  v8 = a3;
  v9 = [[v7 alloc] initWithContentsOfURL:v8 options:a4 error:a5];

  return v9;
}

- (id)contentsOfDirectoryAtURL:(id)a3 includingPropertiesForKeys:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v9 = MEMORY[0x1E696AC08];
  v10 = a4;
  v11 = a3;
  v12 = [v9 defaultManager];
  v13 = [v12 contentsOfDirectoryAtURL:v11 includingPropertiesForKeys:v10 options:a5 error:a6];

  return v13;
}

@end