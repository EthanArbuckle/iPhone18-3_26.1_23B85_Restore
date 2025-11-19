@interface GlobalDistortionCorrectionByPortType
- (GlobalDistortionCorrectionByPortType)initWithDictionary:(id)a3;
@end

@implementation GlobalDistortionCorrectionByPortType

- (GlobalDistortionCorrectionByPortType)initWithDictionary:(id)a3
{
  v4 = a3;
  v81.receiver = self;
  v81.super_class = GlobalDistortionCorrectionByPortType;
  v5 = [(GlobalDistortionCorrectionByPortType *)&v81 init];
  if (!v5)
  {
LABEL_39:
    v67 = v5;
    goto LABEL_40;
  }

  v6 = objc_alloc(MEMORY[0x29EDB8E00]);
  v10 = objc_msgSend_count(v4, v7, v8, v9);
  v13 = objc_msgSend_initWithCapacity_(v6, v11, v10, v12);
  gdcByPortType = v5->_gdcByPortType;
  v73 = v5;
  v5->_gdcByPortType = v13;

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v69 = v4;
  v15 = v4;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v77, v76, 16);
  if (!v17)
  {
    v74 = 0;
    goto LABEL_36;
  }

  v20 = v17;
  v74 = 0;
  v21 = *v78;
  v22 = *MEMORY[0x29EDBFF28];
  v75 = *MEMORY[0x29EDBFEF8];
  v71 = *MEMORY[0x29EDBFF38];
  v70 = *MEMORY[0x29EDC0328];
  v72 = *v78;
  while (2)
  {
    v23 = 0;
    do
    {
      if (*v78 != v21)
      {
        objc_enumerationMutation(v15);
      }

      v24 = *(*(&v77 + 1) + 8 * v23);
      v25 = objc_msgSend_objectForKeyedSubscript_(v15, v18, v24, v19);
      v30 = objc_msgSend_objectForKeyedSubscript_(v25, v26, v22, v27);
      if (v30)
      {
        v31 = objc_msgSend_objectForKeyedSubscript_(v25, v28, v75, v29);

        if (v31)
        {
          v33 = objc_opt_new();
          if (v25)
          {
            LOBYTE(v82[0]) = 0;
            objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v25, v32, v71, v82, 0.0);
            v34 = v82[0];
            *(v33 + 80) = v35;
            v38 = objc_msgSend_objectForKeyedSubscript_(v25, v36, v22, v37);
            if (v38)
            {
              v40 = v38;
              LOBYTE(v82[0]) = 0;
              objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v38, v39, @"X", v82, 0.0);
              v41 = v82[0];
              *(v33 + 72) = v42;
              LOBYTE(v82[0]) = 0;
              objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v40, v43, @"Y", v82, 0.0);
              v47 = ((v82[0] & v41) & v34 & 1) == 0;
              v48 = v74;
              if (v47)
              {
                v48 = 25;
              }

              *(v33 + 76) = v46;
              v49 = objc_msgSend_objectForKeyedSubscript_(v25, v44, v75, v45);
              v52 = v49;
              if (!v49)
              {
                sub_2958B0880(v40, v82);
LABEL_30:
                v74 = v82[0];
                LODWORD(v30) = 1;
                goto LABEL_18;
              }

              v74 = v48;
              v53 = objc_msgSend_objectForKeyedSubscript_(v49, v50, v70, v51);
              if (v53)
              {
                v30 = v53;
                if (objc_msgSend_length(v53, v54, v55, v56) == 64)
                {
                  v57 = v30;
                  v61 = objc_msgSend_bytes(v57, v58, v59, v60);
                  v62 = v61[2];
                  v63 = v61[3];
                  v64 = v61[1];
                  *(v33 + 8) = *v61;
                  *(v33 + 56) = v63;
                  *(v33 + 40) = v62;
                  *(v33 + 24) = v64;
                  objc_msgSend_setObject_forKeyedSubscript_(v73->_gdcByPortType, v65, v33, v24);

                  LODWORD(v30) = 0;
                  LODWORD(v52) = 1;
                  v33 = v40;
LABEL_18:

                  v21 = v72;
                  goto LABEL_21;
                }

                sub_2958B0700(v30, v52, v40, v82);
              }

              else
              {
                sub_2958B07C4(v52, v40, v82);
              }
            }

            else
            {
              sub_2958B092C(v82);
            }
          }

          else
          {
            sub_2958B09C8(v82);
          }

          LODWORD(v52) = 0;
          goto LABEL_30;
        }

        LODWORD(v30) = 0;
      }

      LODWORD(v52) = 1;
LABEL_21:

      if (!v52)
      {

        v4 = v69;
        v5 = v73;
        if (v30)
        {
          goto LABEL_37;
        }

        goto LABEL_41;
      }

      ++v23;
    }

    while (v20 != v23);
    v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v77, v76, 16);
    v20 = v66;
    if (v66)
    {
      continue;
    }

    break;
  }

LABEL_36:

  v4 = v69;
  v5 = v73;
LABEL_37:
  if (!v74)
  {
    goto LABEL_39;
  }

  v67 = 0;
LABEL_40:
  v25 = v67;
LABEL_41:

  return v25;
}

@end