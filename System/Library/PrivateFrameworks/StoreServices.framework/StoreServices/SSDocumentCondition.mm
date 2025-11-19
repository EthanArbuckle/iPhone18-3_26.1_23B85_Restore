@interface SSDocumentCondition
- (BOOL)evaluateWithContext:(id)a3;
@end

@implementation SSDocumentCondition

- (BOOL)evaluateWithContext:(id)a3
{
  if (evaluateWithContext__sOnce != -1)
  {
    [SSDocumentCondition evaluateWithContext:];
  }

  if (evaluateWithContext__sMobileCoreServices)
  {
    return ([objc_msgSend(-[objc_class documentProxyForName:type:MIMEType:](NSClassFromString(&cfstr_Lsdocumentprox.isa) documentProxyForName:0 type:self->super._value MIMEType:{0), "applicationsAvailableForOpeningWithError:", 0), "count"}] != 0) ^ (self->super._operator == 1);
  }

  else
  {
    return 0;
  }
}

void *__43__SSDocumentCondition_evaluateWithContext___block_invoke()
{
  result = dlopen("/System/Library/Frameworks/MobileCoreServices.framework/MobileCoreServices", 1);
  evaluateWithContext__sMobileCoreServices = result;
  return result;
}

@end