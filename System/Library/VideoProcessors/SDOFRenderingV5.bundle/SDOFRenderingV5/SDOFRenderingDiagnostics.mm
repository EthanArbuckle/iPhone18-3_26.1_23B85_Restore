@interface SDOFRenderingDiagnostics
- (SDOFRenderingDiagnostics)init;
- (id)createDiagnosticsDictionary;
- (id)dictFromFace:(id *)a3;
@end

@implementation SDOFRenderingDiagnostics

- (SDOFRenderingDiagnostics)init
{
  v6.receiver = self;
  v6.super_class = SDOFRenderingDiagnostics;
  v2 = [(SDOFRenderingDiagnostics *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x29EDB8E00]);
    diagDict = v2->_diagDict;
    v2->_diagDict = v3;
  }

  return v2;
}

- (id)createDiagnosticsDictionary
{
  v4 = objc_msgSend_copy(self->_diagDict, a2, v2, v3);

  return v4;
}

- (id)dictFromFace:(id *)a3
{
  v5 = objc_msgSend_dictionary(MEMORY[0x29EDB8E00], a2, a3, v3);
  if (v5)
  {
    DictionaryRepresentation = CGPointCreateDictionaryRepresentation(a3->var1);
    objc_msgSend_setObject_forKeyedSubscript_(v5, v7, DictionaryRepresentation, @"leftEye");

    v8 = CGPointCreateDictionaryRepresentation(a3->var2);
    objc_msgSend_setObject_forKeyedSubscript_(v5, v9, v8, @"rightEye");

    v10 = CGPointCreateDictionaryRepresentation(a3->var0);
    objc_msgSend_setObject_forKeyedSubscript_(v5, v11, v10, @"nose");
  }

  else
  {
    sub_295EB86E4();
  }

  return v5;
}

@end