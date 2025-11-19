@interface ASPStorageiBootUpdater
+ (id)IOMatchingPropertyTable;
- (ASPStorageiBootUpdater)initWithIOService:(unsigned int)a3;
- (BOOL)updateBootFirmwareWithError:(id *)a3;
- (void)dealloc;
@end

@implementation ASPStorageiBootUpdater

+ (id)IOMatchingPropertyTable
{
  v3 = @"IOProviderClass";
  v4 = @"ASPStorage";
  return [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
}

- (ASPStorageiBootUpdater)initWithIOService:(unsigned int)a3
{
  v3 = *&a3;
  v8.receiver = self;
  v8.super_class = ASPStorageiBootUpdater;
  v4 = [(MSUBootFirmwareUpdater *)&v8 initWithIOService:?];
  if (v4)
  {
    v4->_llbWriter = [[DevNodeWriter alloc] initWithServiceNamed:@"EmbeddedDeviceTypeLLBFirmware" parent:v3];
    v5 = [[DevNodeWriter alloc] initWithServiceNamed:@"EmbeddedDeviceTypeFirmware" parent:v3];
    v4->_firmwareWriter = v5;
    if (v4->_llbWriter)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {

      return 0;
    }
  }

  return v4;
}

- (BOOL)updateBootFirmwareWithError:(id *)a3
{
  v157 = 0;
  v156 = 1;
  v155 = 0;
  if (![(DevNodeWriter *)[(ASPStorageiBootUpdater *)self llbWriter] isAvailable])
  {
    v37 = [(ASPStorageiBootUpdater *)self llbWriter];
    iBU_LOG_real(@"LLB writer %@ was unavailable at write-time", "[ASPStorageiBootUpdater updateBootFirmwareWithError:]", v38, v39, v40, v41, v42, v43, v37);
    if (a3)
    {
      v142 = [(ASPStorageiBootUpdater *)self llbWriter];
      v36 = @"LLB writer %@ was unavailable at write-time";
LABEL_18:
      v51 = 6;
      v35 = 0;
LABEL_22:
      v52 = MSUBootFirmwareError(v51, v35, v36, v30, v31, v32, v33, v34, v142);
LABEL_23:
      v53 = v52;
      result = 0;
      *a3 = v53;
      return result;
    }

    return 0;
  }

  if (![(DevNodeWriter *)[(ASPStorageiBootUpdater *)self firmwareWriter] isAvailable])
  {
    v44 = [(ASPStorageiBootUpdater *)self firmwareWriter];
    iBU_LOG_real(@"Firmware writer %@ was unavailable at write-time", "[ASPStorageiBootUpdater updateBootFirmwareWithError:]", v45, v46, v47, v48, v49, v50, v44);
    if (a3)
    {
      v142 = [(ASPStorageiBootUpdater *)self firmwareWriter];
      v36 = @"Firmware writer %@ was unavailable at write-time";
      goto LABEL_18;
    }

    return 0;
  }

  v5 = [(NSArray *)[(MSUBootFirmwareUpdater *)self firmwareImages] count];
  iBU_LOG_real(@"Writing %lu firmware images to firmware dev node.", "[ASPStorageiBootUpdater updateBootFirmwareWithError:]", v6, v7, v8, v9, v10, v11, v5);
  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v12 = [(MSUBootFirmwareUpdater *)self firmwareImages];
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v151 objects:v159 count:16];
  if (v13)
  {
    v20 = v13;
    v21 = *v152;
LABEL_5:
    v22 = 0;
    while (1)
    {
      if (*v152 != v21)
      {
        objc_enumerationMutation(v12);
      }

      v23 = *(*(&v151 + 1) + 8 * v22);
      iBU_LOG_real(@"Writing a firmware image to firmware dev node.", "[ASPStorageiBootUpdater updateBootFirmwareWithError:]", v14, v15, v16, v17, v18, v19, v140);
      if ([(MSUBootFirmwareUpdater *)self _encodeAndWriteFirmware:v23 toWriter:[(ASPStorageiBootUpdater *)self firmwareWriter] withError:&v155])
      {
        break;
      }

      if (v20 == ++v22)
      {
        v20 = [(NSArray *)v12 countByEnumeratingWithState:&v151 objects:v159 count:16];
        if (v20)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    iBU_LOG_real(@"Failed to write FW data to firmwareWriter", "[ASPStorageiBootUpdater updateBootFirmwareWithError:]", v14, v15, v16, v17, v18, v19, v140);
    if (!a3)
    {
      return 0;
    }

    v35 = v155;
    v36 = @"Failed to write FW data to firmwareWriter";
    goto LABEL_21;
  }

LABEL_11:
  iBU_LOG_real(@"Writing end_of_contents_bytes to firmware dev node.", "[ASPStorageiBootUpdater updateBootFirmwareWithError:]", v14, v15, v16, v17, v18, v19, v140);
  if ([(DevNodeWriter *)[(ASPStorageiBootUpdater *)self firmwareWriter] writeData:[NSData withError:"dataWithBytes:length:" dataWithBytes:2 length:?], &v155])
  {
    iBU_LOG_real(@"Failed to write end-of-contents bytes to firmwareWriter.", "[ASPStorageiBootUpdater updateBootFirmwareWithError:]", v24, v25, v26, v27, v28, v29, v141);
    if (a3)
    {
      v35 = v155;
      v36 = @"Failed to write end-of-contents bytes to firmwareWriter.";
LABEL_21:
      v51 = 3;
      goto LABEL_22;
    }

    return 0;
  }

  if (![(DevNodeWriter *)[(ASPStorageiBootUpdater *)self firmwareWriter] finished])
  {
    iBU_LOG_real(@"Failed to clean up firmwareWriter.", "[ASPStorageiBootUpdater updateBootFirmwareWithError:]", v55, v56, v57, v58, v59, v60, v141);
  }

  if (sysctlbyname("debug.ASPFW", 0, 0, &v156, 4uLL))
  {
    goto LABEL_27;
  }

  v75 = [(NSArray *)[(MSUBootFirmwareUpdater *)self bootBlockImages] count];
  iBU_LOG_real(@"Writing %lu firmware images to llb dev node.", "[ASPStorageiBootUpdater updateBootFirmwareWithError:]", v76, v77, v78, v79, v80, v81, v75);
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v82 = [(MSUBootFirmwareUpdater *)self bootBlockImages];
  v83 = [(NSArray *)v82 countByEnumeratingWithState:&v147 objects:v158 count:16];
  if (v83)
  {
    v90 = v83;
    v91 = 0;
    v92 = *v148;
LABEL_31:
    v93 = 0;
    while (1)
    {
      if (*v148 != v92)
      {
        objc_enumerationMutation(v82);
      }

      v94 = [(MSUBootFirmwareUpdater *)self _encodeFirmware:*(*(&v147 + 1) + 8 * v93) withRestoreInfo:[(MSUBootFirmwareUpdater *)self _restoreInfoDictionary]];
      if (!v94)
      {
        break;
      }

      v101 = v94;
      if ([(DevNodeWriter *)[(ASPStorageiBootUpdater *)self llbWriter] writeData:v94 withError:&v155])
      {
        iBU_LOG_real(@"Failed to write boot block data to dev node.", "[ASPStorageiBootUpdater updateBootFirmwareWithError:]", v102, v103, v104, v105, v106, v107, v143);
        if (a3)
        {
          *a3 = MSUBootFirmwareError(3, v155, @"Failed to write boot block data to dev node.", v115, v116, v117, v118, v119, v145);
        }

        return 0;
      }

      v91 += [v101 length];

      if (v90 == ++v93)
      {
        v90 = [(NSArray *)v82 countByEnumeratingWithState:&v147 objects:v158 count:16];
        if (v90)
        {
          goto LABEL_31;
        }

        goto LABEL_40;
      }
    }

    iBU_LOG_real(@"Got NULL data while wrapping boot-block IMG4 data.", "[ASPStorageiBootUpdater updateBootFirmwareWithError:]", v95, v96, v97, v98, v99, v100, v143);
    if (!a3)
    {
      return 0;
    }

    v35 = v155;
    v36 = @"Got NULL data while wrapping boot-block IMG4 data.";
    goto LABEL_21;
  }

  v91 = 0;
LABEL_40:
  iBU_LOG_real(@"Writing end_of_contents_bytes to lldb dev node.", "[ASPStorageiBootUpdater updateBootFirmwareWithError:]", v84, v85, v86, v87, v88, v89, v143);
  v108 = [NSData dataWithBytes:&v157 length:2];
  if ([(DevNodeWriter *)[(ASPStorageiBootUpdater *)self llbWriter] writeData:v108 withError:&v155])
  {
    iBU_LOG_real(@"Failed to write end-of-contents bytes to llbWriter.", "[ASPStorageiBootUpdater updateBootFirmwareWithError:]", v109, v110, v111, v112, v113, v114, v144);
    if (a3)
    {
      v35 = v155;
      v36 = @"Failed to write end-of-contents bytes to llbWriter.";
      goto LABEL_21;
    }

    return 0;
  }

  v120 = 4096 - (([(NSData *)v108 length]+ v91) & 0xFFF);
  v121 = malloc(v120);
  bzero(v121, v120);
  iBU_LOG_real(@"Writing final padding to llb dev node.", "[ASPStorageiBootUpdater updateBootFirmwareWithError:]", v122, v123, v124, v125, v126, v127, v144);
  if ([(DevNodeWriter *)[(ASPStorageiBootUpdater *)self llbWriter] writeBytes:v121 ofLength:v120 withError:&v155])
  {
    iBU_LOG_real(@"Failed to write LLB to dev node.", "[ASPStorageiBootUpdater updateBootFirmwareWithError:]", v128, v129, v130, v131, v132, v133, v146);
    if (a3)
    {
      v35 = v155;
      v36 = @"Failed to write LLB to dev node.";
      goto LABEL_21;
    }

    return 0;
  }

  if (![(DevNodeWriter *)[(ASPStorageiBootUpdater *)self llbWriter] finished])
  {
    iBU_LOG_real(@"Failed to clean up llbWriter.", "[ASPStorageiBootUpdater updateBootFirmwareWithError:]", v134, v135, v136, v137, v138, v139, v146);
  }

  if (sysctlbyname("debug.ASPLLB", 0, 0, &v156, 4uLL))
  {
LABEL_27:
    v61 = __error();
    strerror(*v61);
    iBU_LOG_real(@"sysctlbyname('%s') failed with error: %s", "[ASPStorageiBootUpdater updateBootFirmwareWithError:]", v62, v63, v64, v65, v66, v67, "debug.ASPFW");
    if (a3)
    {
      v68 = v155;
      v69 = __error();
      strerror(*v69);
      v52 = MSUBootFirmwareError(1, v68, @"sysctlbyname('%s') failed with error: %s", v70, v71, v72, v73, v74, "debug.ASPFW");
      goto LABEL_23;
    }

    return 0;
  }

  return 1;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ASPStorageiBootUpdater;
  [(MSUBootFirmwareUpdater *)&v3 dealloc];
}

@end