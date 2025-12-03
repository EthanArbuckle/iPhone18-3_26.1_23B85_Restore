@interface DenoiseRemixFragmentShader
- (DenoiseRemixFragmentShader)initWithMetal:(id)metal vertName:(id)name fragName:(id)fragName constantValues:(id)values pixelFormat:(unint64_t)format pixelFormat2:(unint64_t)format2;
@end

@implementation DenoiseRemixFragmentShader

- (DenoiseRemixFragmentShader)initWithMetal:(id)metal vertName:(id)name fragName:(id)fragName constantValues:(id)values pixelFormat:(unint64_t)format pixelFormat2:(unint64_t)format2
{
  metalCopy = metal;
  nameCopy = name;
  fragNameCopy = fragName;
  valuesCopy = values;
  v37.receiver = self;
  v37.super_class = DenoiseRemixFragmentShader;
  v20 = [(DenoiseRemixFragmentShader *)&v37 init];
  if (v20)
  {
    obj = fragName;
    v21 = objc_msgSend_arrayWithCapacity_(MEMORY[0x29EDB8DE8], v18, 2, v19);
    v22 = objc_opt_new();
    objc_msgSend_setPixelFormat_(v22, v23, format, v24);
    objc_msgSend_setObject_atIndexedSubscript_(v21, v25, v22, 0);
    v26 = objc_opt_new();

    objc_msgSend_setPixelFormat_(v26, v27, format2, v28);
    objc_msgSend_setObject_atIndexedSubscript_(v21, v29, v26, 1);
    v31 = objc_msgSend_renderPipelineStateForVertexFunction_vertexDescriptor_fragmentFunction_constants_colorAttachmentDescriptorArrray_(metalCopy, v30, nameCopy, 0, fragNameCopy, valuesCopy, v21);
    pipeline = v20->_pipeline;
    v20->_pipeline = v31;

    if (v20->_pipeline)
    {
      objc_storeStrong(&v20->_fragName, obj);
      goto LABEL_4;
    }

    sub_2958CD600(&v38);
  }

  else
  {
    sub_2958CD69C(&v38);
    v26 = 0;
    v21 = 0;
  }

  if (v38)
  {
    v33 = 0;
    goto LABEL_5;
  }

LABEL_4:
  v33 = v20;
LABEL_5:
  v34 = v33;

  return v34;
}

@end