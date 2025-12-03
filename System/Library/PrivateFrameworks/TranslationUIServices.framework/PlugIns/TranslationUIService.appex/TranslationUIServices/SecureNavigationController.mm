@interface SecureNavigationController
- (_TtC20TranslationUIService26SecureNavigationController)initWithCoder:(id)coder;
- (_TtC20TranslationUIService26SecureNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC20TranslationUIService26SecureNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC20TranslationUIService26SecureNavigationController)initWithRootViewController:(id)controller;
@end

@implementation SecureNavigationController

- (_TtC20TranslationUIService26SecureNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SecureNavigationController();
  return [(SecureNavigationController *)&v7 initWithNavigationBarClass:class toolbarClass:toolbarClass];
}

- (_TtC20TranslationUIService26SecureNavigationController)initWithRootViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SecureNavigationController();
  return [(SecureNavigationController *)&v5 initWithRootViewController:controller];
}

- (_TtC20TranslationUIService26SecureNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_100051158();
    bundleCopy = bundle;
    v7 = sub_100051128();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for SecureNavigationController();
  v9 = [(SecureNavigationController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC20TranslationUIService26SecureNavigationController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SecureNavigationController();
  coderCopy = coder;
  v5 = [(SecureNavigationController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end