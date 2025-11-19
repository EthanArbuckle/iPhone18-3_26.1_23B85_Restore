@interface OKActionBinding
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (OKActionBinding)init;
- (OKActionBinding)initWithSettings:(id)a3;
- (void)dealloc;
@end

@implementation OKActionBinding

- (OKActionBinding)init
{
  v3.receiver = self;
  v3.super_class = OKActionBinding;
  return [(OKActionBindingProxy *)&v3 init];
}

- (OKActionBinding)initWithSettings:(id)a3
{
  v4.receiver = self;
  v4.super_class = OKActionBinding;
  return [(OKActionBindingProxy *)&v4 initWithSettings:a3];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OKActionBinding;
  [(OKActionBindingProxy *)&v2 dealloc];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v4 = [(OKActionBindingProxy *)self actionResponder:a3];

  return [(OKActionResponder *)v4 interactivityEnabled];
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  if (![(OKActionBindingProxy *)self alwaysRecognizeSimultaneously])
  {
    v6 = [(NSArray *)[(OKActionBindingProxy *)self shouldRecognizeSimultaneously] count];
    if (!v6)
    {
      return v6;
    }

    v7 = [(OKActionBindingProxy *)OKActionBinding actionBindingWithGestureRecognizer:a4 fromActionResponder:[(OKActionBindingProxy *)self actionResponder]];
    if (!v7 || ![(NSArray *)[(OKActionBindingProxy *)self shouldRecognizeSimultaneously] containsObject:[(OKActionBindingProxy *)v7 name]])
    {
      LOBYTE(v6) = 0;
      return v6;
    }
  }

  LOBYTE(v6) = 1;
  return v6;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = [(NSArray *)[(OKActionBindingProxy *)self requireToFail] count];
  if (v6)
  {
    v7 = [(OKActionBindingProxy *)OKActionBinding actionBindingWithGestureRecognizer:a4 fromActionResponder:[(OKActionBindingProxy *)self actionResponder]];
    LOBYTE(v6) = v7 && [(NSArray *)[(OKActionBindingProxy *)self requireToFail] containsObject:[(OKActionBindingProxy *)v7 name]];
  }

  return v6;
}

@end