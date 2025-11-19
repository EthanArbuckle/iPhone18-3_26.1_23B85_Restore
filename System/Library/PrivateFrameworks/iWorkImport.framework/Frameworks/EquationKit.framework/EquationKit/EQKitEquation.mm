@interface EQKitEquation
+ (id)equationSourceFromDataProvider:(CGDataProvider *)a3;
+ (id)equationSourceFromPDFData:(id)a3;
+ (id)equationSourceFromXMLMetadata:(id)a3;
+ (id)equationWithData:(id)a3 format:(int)a4 environment:(id)a5 error:(id *)a6;
+ (id)equationWithString:(id)a3 format:(int)a4 environment:(id)a5 error:(id *)a6;
+ (id)equationWithString:(id)a3 format:(int)a4 error:(id *)a5;
+ (id)equationWithXMLDoc:(_xmlDoc *)a3 node:(_xmlNode *)a4 environment:(id)a5 error:(id *)a6;
+ (id)xmlMetadataFromEquationSource:(id)a3;
+ (int)formatFromData:(id)a3;
+ (int)formatFromString:(id)a3;
- (BOOL)exportToXMLWriter:(_xmlTextWriter *)a3 ns:(const char *)a4 prefix:(const char *)a5 characterCount:(int *)a6;
- (EQKitEquation)initWithRoot:(id)a3 source:(id)a4;
- (id)description;
- (id)pdfDataWithLayout:(id)a3 layoutContext:(id)a4 sourceString:(id)a5 tightFit:(BOOL)a6;
- (id)pdfDataWithLayoutContext:(id)a3 baselineOffset:(double *)a4 sourceString:(id)a5;
- (void)dealloc;
@end

@implementation EQKitEquation

- (EQKitEquation)initWithRoot:(id)a3 source:(id)a4
{
  if (!a3)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[EQKitEquation initWithRoot:source:]", a4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/EquationKit/EQKitEquation.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 355, 0, "invalid root");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  v19.receiver = self;
  v19.super_class = EQKitEquation;
  v16 = [(EQKitEquation *)&v19 init];
  v17 = v16;
  if (v16)
  {
    if (a3)
    {
      v16->mRoot = a3;
      v17->mSource = a4;
    }

    else
    {

      return 0;
    }
  }

  return v17;
}

+ (int)formatFromData:(id)a3
{
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  v7 = objc_msgSend_initWithData_encoding_(v5, v6, a3, 4);
  LODWORD(a1) = objc_msgSend_formatFromString_(a1, v8, v7, v9);

  return a1;
}

+ (int)formatFromString:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_hasPrefix_(a3, a2, @"$$", v3))
  {
LABEL_2:
    LODWORD(v5) = 2;
    return v5;
  }

  if (!qword_280A389A8)
  {
    v6 = objc_alloc(MEMORY[0x277CBEA60]);
    v9 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v7, @"<math", v8, @"</math>", 0);
    v12 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v10, @"<", v11, @":math", @"</", @":math>", 0);
    qword_280A389A8 = objc_msgSend_initWithObjects_(v6, v13, v9, v14, v12, 0);
  }

  v15 = sub_275CB89E8();
  v19 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v16, v17, v18);
  v22 = objc_msgSend_stringByTrimmingCharactersInSet_(a3, v20, v19, v21);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v23 = qword_280A389A8;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(qword_280A389A8, v24, &v42, v47, 16);
  if (v25)
  {
    v28 = v25;
    v29 = *v43;
    while (2)
    {
      v30 = 0;
      do
      {
        if (*v43 != v29)
        {
          objc_enumerationMutation(v23);
        }

        if (sub_275CBA420(*(*(&v42 + 1) + 8 * v30), v22, 0, v27) != 0x7FFFFFFFFFFFFFFFLL)
        {
          LODWORD(v5) = 1;
          return v5;
        }

        ++v30;
      }

      while (v28 != v30);
      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v31, &v42, v47, 16);
      if (v28)
      {
        continue;
      }

      break;
    }
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v26, &v38, v46, 16);
  if (v5)
  {
    v33 = v5;
    v34 = *v39;
LABEL_15:
    v35 = 0;
    while (1)
    {
      if (*v39 != v34)
      {
        objc_enumerationMutation(v15);
      }

      if (sub_275CBA420(*(*(&v38 + 1) + 8 * v35), v22, 1, v32) != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_2;
      }

      if (v33 == ++v35)
      {
        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v36, &v38, v46, 16);
        LODWORD(v5) = 0;
        if (v33)
        {
          goto LABEL_15;
        }

        return v5;
      }
    }
  }

  return v5;
}

+ (id)equationWithData:(id)a3 format:(int)a4 environment:(id)a5 error:(id *)a6
{
  if (a4 == 2)
  {
    if (a3)
    {
      v20 = objc_alloc(MEMORY[0x277CCACA8]);
      v24 = objc_msgSend_bytes(a3, v21, v22, v23);
      v28 = objc_msgSend_length(a3, v25, v26, v27);
      v30 = objc_msgSend_initWithBytes_length_encoding_(v20, v29, v24, v28, 4);
      sub_275CB8E9C(a5, v30);
    }

    return 0;
  }

  if (a4 != 1)
  {
    if (!a4 && a6 && !*a6)
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = MEMORY[0x277CBEAC0];
      v11 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], a2, a3, *&a4);
      v13 = objc_msgSend_localizedStringForKey_value_table_(v11, v12, @"String format unknown. String format should be LaTeX or MathML.", &stru_2884CC9F8, 0);
      v16 = objc_msgSend_dictionaryWithObjectsAndKeys_(v10, v14, v13, v15, *MEMORY[0x277CCA450], 0);
      v18 = 0;
      *a6 = objc_msgSend_errorWithDomain_code_userInfo_(v9, v17, @"EQKitErrorDomain", 0, v16);
      return v18;
    }

    return 0;
  }

  v19 = a3;
  if (!v19)
  {
    return 0;
  }

  if (xmlSAXVersion(&hdlr, 2))
  {
    v18 = 0;
  }

  else
  {
    hdlr.getEntity = sub_275CD67B0;
    v34 = xmlSubstituteEntitiesDefault(1);
    ExternalEntityLoader = xmlGetExternalEntityLoader();
    xmlSetExternalEntityLoader(sub_275CB9430);
    v39 = objc_msgSend_bytes(v19, v36, v37, v38);
    v43 = objc_msgSend_length(v19, v40, v41, v42);
    v44 = xmlSAXParseMemory(&hdlr, v39, v43, 0);
    xmlSetExternalEntityLoader(ExternalEntityLoader);
    xmlSubstituteEntitiesDefault(v34);
    v18 = 0;
    if (a5 && v44)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = a5;
      }

      else
      {
        v45 = 0;
      }

      v46 = [EQKitMathMLParser alloc];
      v48 = objc_msgSend_initWithDocument_node_source_environment_(v46, v47, v44, 0, v19, v45);
      v18 = objc_msgSend_parse(v48, v49, v50, v51);
      if (a6 && !*a6)
      {
        *a6 = objc_msgSend_error(v48, v52, v53, v54);
      }

      xmlFreeDoc(v44);
    }
  }

  if (a6 && !v18)
  {
    if (!*a6)
    {
      v55 = MEMORY[0x277CCA9B8];
      v56 = MEMORY[0x277CBEAC0];
      v57 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], v31, v32, v33);
      v59 = objc_msgSend_localizedStringForKey_value_table_(v57, v58, @"Unable to create equation.", &stru_2884CC9F8, 0);
      v62 = objc_msgSend_dictionaryWithObjectsAndKeys_(v56, v60, v59, v61, *MEMORY[0x277CCA450], 0);
      *a6 = objc_msgSend_errorWithDomain_code_userInfo_(v55, v63, @"EQKitErrorDomain", 0, v62);
    }

    return 0;
  }

  if (v18)
  {
    v18[3] = a5;
  }

  return v18;
}

+ (id)equationWithString:(id)a3 format:(int)a4 environment:(id)a5 error:(id *)a6
{
  v7 = *&a4;
  v9 = objc_msgSend_UTF8String(a3, a2, a3, *&a4);
  if (v9)
  {
    v11 = v9;
    v12 = strlen(v9);
    v14 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v13, v11, v12);

    return MEMORY[0x2821F9670](a1, sel_equationWithData_format_environment_error_, v14, v7);
  }

  else
  {
    if (a6)
    {
      *a6 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v10, *MEMORY[0x277CCA050], 2048, 0);
    }

    return 0;
  }
}

+ (id)equationWithString:(id)a3 format:(int)a4 error:(id *)a5
{
  v6 = *&a4;
  v8 = objc_msgSend_UTF8String(a3, a2, a3, *&a4);
  if (v8)
  {
    v10 = v8;
    v11 = strlen(v8);
    v13 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v12, v10, v11);
    objc_msgSend_defaultEnvironment(EQKitEnvironment, v14, v15, v16);

    return MEMORY[0x2821F9670](a1, sel_equationWithData_format_environment_error_, v13, v6);
  }

  else
  {
    if (a5)
    {
      *a5 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v9, *MEMORY[0x277CCA050], 2048, 0);
    }

    return 0;
  }
}

+ (id)equationWithXMLDoc:(_xmlDoc *)a3 node:(_xmlNode *)a4 environment:(id)a5 error:(id *)a6
{
  v6 = 0;
  if (a3 && a4)
  {
    v11 = [EQKitMathMLParser alloc];
    v12 = objc_opt_class();
    v13 = sub_275C950F4(v12, a5);
    v15 = objc_msgSend_initWithDocument_node_source_environment_(v11, v14, a3, a4, 0, v13);
    v6 = objc_msgSend_parse(v15, v16, v17, v18);
    if (a6)
    {
      *a6 = objc_msgSend_error(v15, v19, v20, v21);
    }
  }

  return v6;
}

- (BOOL)exportToXMLWriter:(_xmlTextWriter *)a3 ns:(const char *)a4 prefix:(const char *)a5 characterCount:(int *)a6
{
  if (!self->mSource)
  {
    return 0;
  }

  if (!xmlStrEqual(a4, "http://www.w3.org/1998/Math/MathML"))
  {
    return 0;
  }

  if (xmlSAXVersion(&v24, 2))
  {
    return 0;
  }

  v24.getEntity = sub_275CD67B0;
  v12 = xmlSubstituteEntitiesDefault(1);
  ExternalEntityLoader = xmlGetExternalEntityLoader();
  xmlSetExternalEntityLoader(sub_275CB9430);
  v17 = objc_msgSend_bytes(self->mSource, v14, v15, v16);
  v21 = objc_msgSend_length(self->mSource, v18, v19, v20);
  v22 = xmlSAXParseMemory(&v24, v17, v21, 0);
  xmlSetExternalEntityLoader(ExternalEntityLoader);
  xmlSubstituteEntitiesDefault(v12);
  if (!v22)
  {
    return 0;
  }

  RootElement = xmlDocGetRootElement(v22);
  if (RootElement)
  {
    v10 = sub_275CB97F0(a3, a5, RootElement, a6);
  }

  else
  {
    v10 = 0;
  }

  xmlFreeDoc(v22);
  return v10;
}

- (id)pdfDataWithLayoutContext:(id)a3 baselineOffset:(double *)a4 sourceString:(id)a5
{
  v9 = objc_msgSend_root(self, a2, a3, a4);
  v13 = objc_msgSend_newLayout(v9, v10, v11, v12);
  if (!v13)
  {
    return 0;
  }

  v16 = v13;
  objc_msgSend_layoutWithContext_(v13, v14, a3, v15);
  v21 = objc_msgSend_pdfDataWithLayout_layoutContext_sourceString_tightFit_(self, v17, v16, a3, a5, 0);
  if (a4)
  {
    objc_msgSend_depth(v16, v18, v19, v20);
    *a4 = -v22;
  }

  return v21;
}

+ (id)xmlMetadataFromEquationSource:(id)a3
{
  v5 = objc_msgSend_data(MEMORY[0x277CBEB28], a2, a3, v3);
  v6 = xmlNewDoc("1.0");
  v7 = xmlNewNode(0, "root");
  xmlDocSetRootElement(v6, v7);
  v8 = xmlNewChild(v7, 0, "com.apple.iwork", 0);
  xmlNewProp(v8, "version", "1.0");
  v9 = xmlNewChild(v8, 0, "equation", 0);
  v12 = objc_msgSend_dataUsingEncoding_(a3, v10, 4, v11);
  v16 = objc_msgSend_bytes(v12, v13, v14, v15);
  v20 = objc_msgSend_length(v12, v17, v18, v19);
  v21 = xmlNewCDataBlock(v6, v16, v20);
  xmlAddChild(v9, v21);
  if (v6)
  {
    v22 = xmlKeepBlanksDefault(0);
    IO = xmlOutputBufferCreateIO(sub_275CB9BD4, 0, v5, 0);
    if (IO)
    {
      xmlSaveFormatFileTo(IO, v6, 0, 1);
    }

    xmlKeepBlanksDefault(v22);
  }

  xmlFreeDoc(v6);
  return v5;
}

+ (id)equationSourceFromXMLMetadata:(id)a3
{
  if (xmlSAXVersion(&v30, 2))
  {
    return 0;
  }

  v5 = xmlSubstituteEntitiesDefault(1);
  ExternalEntityLoader = xmlGetExternalEntityLoader();
  xmlSetExternalEntityLoader(sub_275CB9430);
  v10 = objc_msgSend_bytes(a3, v7, v8, v9);
  v14 = objc_msgSend_length(a3, v11, v12, v13);
  v15 = xmlSAXParseMemory(&v30, v10, v14, 0);
  xmlSetExternalEntityLoader(ExternalEntityLoader);
  xmlSubstituteEntitiesDefault(v5);
  if (!v15)
  {
    return 0;
  }

  children = xmlDocGetRootElement(v15)->children;
  if (!children)
  {
    goto LABEL_9;
  }

  while (1)
  {
    if (children->type == XML_ELEMENT_NODE)
    {
      name = children->name;
      if (name)
      {
        if (!strcmp(name, "com.apple.iwork"))
        {
          break;
        }
      }
    }

    children = children->next;
    if (!children)
    {
      goto LABEL_9;
    }
  }

  v19 = children->children;
  if (!v19)
  {
    goto LABEL_9;
  }

  while (1)
  {
    if (v19->type == XML_ELEMENT_NODE)
    {
      v20 = v19->name;
      if (v20)
      {
        if (!strcmp(v20, "equation"))
        {
          break;
        }
      }
    }

    v19 = v19->next;
    if (!v19)
    {
      goto LABEL_9;
    }
  }

  v21 = v19->children;
  if (v21)
  {
    v4 = 0;
    do
    {
      if (v21->type - 3 <= 1 && v21->content && !xmlIsBlankNode(v21))
      {
        if (v4)
        {
          v24 = objc_alloc(MEMORY[0x277CCACA8]);
          v27 = objc_msgSend_initWithUTF8String_(v24, v25, v21->content, v26);
          v4 = objc_msgSend_stringByAppendingString_(v4, v28, v27, v29);
        }

        else
        {
          v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v21->content, v23);
        }
      }

      v21 = v21->next;
    }

    while (v21);
  }

  else
  {
LABEL_9:
    v4 = 0;
  }

  xmlFreeDoc(v15);
  return v4;
}

- (id)pdfDataWithLayout:(id)a3 layoutContext:(id)a4 sourceString:(id)a5 tightFit:(BOOL)a6
{
  if (!a3)
  {
    v76 = MEMORY[0x277D81150];
    v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[EQKitEquation pdfDataWithLayout:layoutContext:sourceString:tightFit:]", a4, a5, a6);
    v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/EquationKit/EQKitEquation.mm", v79);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v76, v81, v77, v80, 864, 0, "invalid layout");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v82, v83, v84);
    return 0;
  }

  v6 = a6;
  objc_msgSend_erasableBounds(a3, a2, a3, a4);
  if (CGRectIsEmpty(v87))
  {
    return 0;
  }

  objc_msgSend_erasableBounds(a3, v10, v11, v12);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  objc_msgSend_height(a3, v21, v22, v23);
  v25 = v24;
  objc_msgSend_width(a3, v26, v27, v28);
  v32 = v18;
  if (v33 > v18)
  {
    objc_msgSend_width(a3, v29, v30, v31);
    v32 = v34;
  }

  v35 = v25 + v16;
  objc_msgSend_height(a3, v29, v30, v31);
  v37 = v36;
  objc_msgSend_height(a3, v38, v39, v40);
  v42 = v41;
  objc_msgSend_depth(a3, v43, v44, v45);
  v50 = v20;
  if (v42 + v49 > v20)
  {
    objc_msgSend_height(a3, v46, v47, v48);
    v52 = v51;
    objc_msgSend_depth(a3, v53, v54, v55);
    v50 = v52 + v56;
  }

  v57 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v58 = objc_autoreleasePoolPush();
  v59 = 0.0;
  if (v6)
  {
    v60 = 0.0;
  }

  else
  {
    v60 = 1.0;
  }

  v61 = fmax(v37, 0.0);
  v62 = fmax(v32, 0.0) + v60 * 2.0;
  v63 = fmax(v50, 0.0) + v60 * 2.0;
  if (v6)
  {
    v62 = v18;
    v59 = v35;
  }

  else
  {
    v20 = v63;
  }

  v86.origin.x = v14;
  v86.origin.y = 0.0;
  v64 = v61 - v59;
  v86.size.width = v62;
  v86.size.height = v20;
  v65 = CGDataConsumerCreateWithCFData(v57);
  v66 = CGPDFContextCreate(v65, &v86, 0);
  CGDataConsumerRelease(v65);
  v67 = objc_opt_class();
  v70 = objc_msgSend_xmlMetadataFromEquationSource_(v67, v68, a5, v69, *&v86.origin.x, *&v86.origin.y, *&v86.size.width, *&v86.size.height);
  CGPDFContextAddDocumentMetadata(v66, v70);
  CGContextSaveGState(v66);
  UIGraphicsPushContext(v66);
  CGPDFContextBeginPage(v66, 0);
  CGContextTranslateCTM(v66, 0.0, v20);
  CGContextScaleCTM(v66, 1.0, -1.0);
  if (objc_opt_respondsToSelector())
  {
    v74 = objc_msgSend_baseFontColor(a4, v71, v72, v73);
    if (v74)
    {
      v75 = v74;
      CGContextSetFillColorWithColor(v66, v74);
      CGContextSetStrokeColorWithColor(v66, v75);
    }
  }

  objc_msgSend_renderIntoContext_offset_(a3, v71, v66, v73, v60, v60 + v64);
  CGPDFContextEndPage(v66);
  UIGraphicsPopContext();
  CGContextRestoreGState(v66);
  CGPDFContextClose(v66);
  CGContextRelease(v66);
  objc_autoreleasePoolPop(v58);
  return v57;
}

+ (id)equationSourceFromPDFData:(id)a3
{
  v6 = objc_msgSend_bytes(a3, a2, a3, v3);
  v10 = objc_msgSend_length(a3, v7, v8, v9);
  result = CGDataProviderCreateWithData(0, v6, v10, 0);
  if (result)
  {
    v14 = result;
    v15 = objc_msgSend_equationSourceFromDataProvider_(a1, v12, result, v13);
    CGDataProviderRelease(v14);
    return v15;
  }

  return result;
}

+ (id)equationSourceFromDataProvider:(CGDataProvider *)a3
{
  if (a3)
  {
    v4 = CGPDFDocumentCreateWithProvider(a3);
    if (v4)
    {
      v5 = v4;
      Catalog = CGPDFDocumentGetCatalog(v4);
      if (Catalog)
      {
        value = 0;
        v7 = 0;
        if (!CGPDFDictionaryGetStream(Catalog, "Metadata", &value))
        {
LABEL_12:
          CGPDFDocumentRelease(v5);
          return v7;
        }

        format = CGPDFDataFormatRaw;
        v8 = CGPDFStreamCopyData(value, &format);
        if (v8)
        {
          v11 = v8;
          if (format)
          {
            v7 = 0;
          }

          else
          {
            v7 = objc_msgSend_equationSourceFromXMLMetadata_(a1, v9, v8, v10);
          }

          CFRelease(v11);
          goto LABEL_12;
        }
      }

      v7 = 0;
      goto LABEL_12;
    }
  }

  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitEquation;
  [(EQKitEquation *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return objc_msgSend_stringWithFormat_(v3, v6, @"<%@ %p root=%@>", v7, v5, self, self->mRoot);
}

@end