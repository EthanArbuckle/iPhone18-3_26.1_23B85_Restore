uint64_t ramrod_get_update_partition_device_node(char *a1, size_t __size)
{
  if (!byte_1C6830)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C6830, __size);
  return 1;
}

uint64_t ramrod_get_baseband_data_partition_device_node(char *a1, size_t __size)
{
  if (!byte_1C6850)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C6850, __size);
  return 1;
}

uint64_t ramrod_get_log_partition_device_node(char *a1, size_t __size)
{
  if (!byte_1C6870)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C6870, __size);
  return 1;
}

uint64_t ramrod_get_xart_partition_device_node(char *a1, size_t __size)
{
  if (!byte_1C6890)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C6890, __size);
  return 1;
}

uint64_t sub_21A98()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 == CFBooleanGetTypeID())
  {
    Value = CFBooleanGetValue(v1);
  }

  else
  {
    Value = 0;
  }

  CFRelease(v1);
  return Value;
}

uint64_t ramrod_get_isc_size_in_bytes()
{
  v0 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/filesystems-props");
  if (v0)
  {
    v8 = v0;
    CFProperty = IORegistryEntryCreateCFProperty(v0, @"isc_size", kCFAllocatorDefault, 0);
    if (!CFProperty)
    {
      ramrod_log_msg("isc_size property in IODeviceTree:/filesystems-props doesn't exist.\n", v10, v11, v12, v13, v14, v15, v16, v67);
      v34 = 524288000;
      ramrod_log_msg("Retrieved isc_size %lld seems too low. Returning default isc_size in bytes: %lld\n", v42, v43, v44, v45, v46, v47, v48, 0);
LABEL_14:
      IOObjectRelease(v8);
      return v34;
    }

    v17 = CFProperty;
    v18 = CFGetTypeID(CFProperty);
    if (v18 == CFDataGetTypeID())
    {
      if (CFDataGetLength(v17) == 4)
      {
        BytePtr = CFDataGetBytePtr(v17);
        ramrod_log_msg("isc_size is a CFData representing %4u bytes\n", v20, v21, v22, v23, v24, v25, v26, *BytePtr);
        v34 = *BytePtr;
        if (v34 >> 22 > 0x7C)
        {
          ramrod_log_msg("Retrieved isc_size: %lld\n", v27, v28, v29, v30, v31, v32, v33, v34);
        }

        else
        {
          ramrod_log_msg("Retrieved isc_size %lld seems too low. Returning default isc_size in bytes: %lld\n", v27, v28, v29, v30, v31, v32, v33, v34);
          v34 = 524288000;
        }

        goto LABEL_13;
      }

      Length = CFDataGetLength(v17);
      ramrod_log_msg("isc_size is a CFData but has a length of %ld instead of 4\n", v59, v60, v61, v62, v63, v64, v65, Length);
    }

    else
    {
      v49 = CFGetTypeID(v17);
      v50 = CFCopyTypeIDDescription(v49);
      ramrod_log_msg_cf(@"isc_size has an unknown type: %@\n", v50);
      if (v50)
      {
        CFRelease(v50);
      }
    }

    v34 = 524288000;
    ramrod_log_msg("Retrieved isc_size %lld seems too low. Returning default isc_size in bytes: %lld\n", v51, v52, v53, v54, v55, v56, v57, 0);
LABEL_13:
    CFRelease(v17);
    goto LABEL_14;
  }

  ramrod_log_msg("isc_size lookup failed: entry IODeviceTree:/filesystems-props doesn't exist.\n", v1, v2, v3, v4, v5, v6, v7, v67);
  v34 = 524288000;
  ramrod_log_msg("Retrieved isc_size %lld seems too low. Returning default isc_size in bytes: %lld\n", v35, v36, v37, v38, v39, v40, v41, 0);
  return v34;
}

uint64_t ramrod_hardware_partition_size_mb(int *a1)
{
  *a1 = 0;
  properties[0] = 0;
  properties[1] = 0;
  LocalStoreMaxSize = AMFDRSealingMapGetLocalStoreMaxSize();
  if (LocalStoreMaxSize)
  {
    ramrod_log_msg("Hardware partition size calculation:\n", v2, v3, v4, v5, v6, v7, v8, v110);
    ramrod_log_msg("%4u MiB FDR\n", v11, v12, v13, v14, v15, v16, v17, 2 * LocalStoreMaxSize);
    *a1 += 2 * LocalStoreMaxSize;
  }

  else
  {
    ramrod_log_msg("WARNING: AMFDRSealingMapGetLocalStoreMaxSize returned 0\n", v2, v3, v4, v5, v6, v7, v8, v110);
    ramrod_log_msg("Hardware partition size calculation:\n", v18, v19, v20, v21, v22, v23, v24, v112);
  }

  v25 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/defaults");
  v33 = v25;
  if (!v25)
  {
    v109 = "IORegistryEntryFromPath returned IO_OBJECT_NULL\n";
LABEL_41:
    ramrod_log_msg(v109, v26, v27, v28, v29, v30, v31, v32, v111);
    goto LABEL_2;
  }

  CFProperties = IORegistryEntryCreateCFProperties(v25, properties, kCFAllocatorDefault, 0);
  if (CFProperties)
  {
    ramrod_log_msg("IORegistryEntryCreateCFProperties returned %x\n", v26, v27, v28, v29, v30, v31, v32, CFProperties);
LABEL_2:
    v10 = 0;
    goto LABEL_28;
  }

  v35 = properties[0];
  if (!properties[0])
  {
    v109 = "IORegistryEntryCreateCFProperties returned NULL properties\n";
    goto LABEL_41;
  }

  v114 = v33;
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v36 = [(__CFDictionary *)properties[0] countByEnumeratingWithState:&v115 objects:v120 count:16];
  if (!v36)
  {
    goto LABEL_23;
  }

  v37 = v36;
  v38 = *v116;
  while (2)
  {
    for (i = 0; i != v37; i = i + 1)
    {
      if (*v116 != v38)
      {
        objc_enumerationMutation(v35);
      }

      v40 = *(*(&v115 + 1) + 8 * i);
      v41 = [v40 length];
      if (v41 > [@"-hw-partition-size" length] && !objc_msgSend(v40, "compare:options:range:", @"-hw-partition-size", 0, objc_msgSend(v40, "length") - objc_msgSend(@"-hw-partition-size", "length"), objc_msgSend(@"-hw-partition-size", "length")))
      {
        v42 = [v40 cStringUsingEncoding:4];
        Value = CFDictionaryGetValue(properties[0], v40);
        if (Value)
        {
          v51 = Value;
          TypeID = CFDataGetTypeID();
          if (TypeID == CFGetTypeID(v51))
          {
            if (CFDataGetLength(v51) == 4)
            {
              BytePtr = CFDataGetBytePtr(v51);
              if (BytePtr)
              {
                v75 = BytePtr;
                ramrod_log_msg("%4u MiB %.*s\n", v68, v69, v70, v71, v72, v73, v74, *BytePtr);
                *a1 += *v75;
                continue;
              }

              ramrod_log_msg("CFDataGetBytePtr returned NULL", v68, v69, v70, v71, v72, v73, v74, v111);
            }

            else
            {
              ramrod_log_msg("Property %s is not 4 bytes\n", v60, v61, v62, v63, v64, v65, v66, v42);
            }
          }

          else
          {
            ramrod_log_msg("Property %s is not CFDataRef\n", v53, v54, v55, v56, v57, v58, v59, v42);
          }
        }

        else
        {
          ramrod_log_msg("Failed to get property for %s\n", v44, v45, v46, v47, v48, v49, v50, v42);
        }

        v10 = 0;
        v33 = v114;
        goto LABEL_28;
      }
    }

    v37 = [(__CFDictionary *)v35 countByEnumeratingWithState:&v115 objects:v120 count:16];
    if (v37)
    {
      continue;
    }

    break;
  }

LABEL_23:
  v76 = IOServiceMatching("ApplePearlSEPDriver");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v76);
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
    ramrod_log_msg("%4u MiB Pearl Reference Frames\n", v85, v86, v87, v88, v89, v90, v91, 15);
    *a1 += 15;
  }

  ramrod_log_msg("%4u MiB free space for apfs\n", v78, v79, v80, v81, v82, v83, v84, 4);
  v99 = *a1;
  v100 = *a1 + 4;
  *a1 = v100;
  v33 = v114;
  if (v100 == 4 || v99 >= 0xFFFFFFFC)
  {
    ramrod_log_msg("%4u MiB padding to 5 MiB\n", v92, v93, v94, v95, v96, v97, v98, 1 - v99);
    *a1 = 5;
  }

  ramrod_log_msg("--------\n", v92, v93, v94, v95, v96, v97, v98, v113);
  ramrod_log_msg("%4u MiB total\n", v101, v102, v103, v104, v105, v106, v107, *a1);
  v10 = 1;
LABEL_28:
  if (properties[0])
  {
    CFRelease(properties[0]);
  }

  if (v33)
  {
    IOObjectRelease(v33);
  }

  return v10;
}

uint64_t ramrod_get_hardware_partition_device_node(char *a1, size_t __size)
{
  if (!byte_1C68B0)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C68B0, __size);
  return 1;
}

uint64_t ramrod_os_release_is_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (new_os_build_version)
  {
    v8 = "New";
    v9 = &new_os_release_type;
  }

  else
  {
    if (!previous_os_build_version)
    {
      ramrod_log_msg("No OS type analyzed, assuming customer variant\n", a2, a3, a4, a5, a6, a7, a8, v20);
      return 0;
    }

    v8 = "Previous";
    v9 = &previous_os_release_type;
  }

  v10 = *v9;
  if (*v9)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    *buffer = 0u;
    v22 = 0u;
    CFStringGetCString(v10, buffer, 128, 0x600u);
    v18 = "%s OS release type %s is internal\n";
    if (CFStringCompare(v10, @"NonUI", 0))
    {
      length = CFStringFind(v10, @"Internal", 0).length;
      v10 = length > 0;
      if (length <= 0)
      {
        v18 = "%s OS release type %s is not internal\n";
      }
    }

    else
    {
      v10 = 1;
    }

    ramrod_log_msg(v18, length, v12, v13, v14, v15, v16, v17, v8);
  }

  else
  {
    ramrod_log_msg("%s OS release type (unset) is not internal\n", a2, a3, a4, a5, a6, a7, a8, v8);
  }

  return v10;
}

uint64_t ramrod_should_have_xart_partition()
{
  v7 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/arm-io/sep/iop-sep-nub/xART");
  if (v7)
  {
    ramrod_log_msg("IODeviceTree:/arm-io/sep/iop-sep-nub/xART found\n", v0, v1, v2, v3, v4, v5, v6, v47);
    IOObjectRelease(v7);
    v7 = 1;
  }

  v8 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen/has-xart");
  if (v8)
  {
    v16 = v8;
    ramrod_log_msg("IODeviceTree:/chosen/has-xart found\n", v9, v10, v11, v12, v13, v14, v15, v47);
    IOObjectRelease(v16);
    v7 = 1;
  }

  v17 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/defaults");
  if (!v17)
  {
    ramrod_log_msg("Failed to read IODeviceTree:/defaults\n", v18, v19, v20, v21, v22, v23, v24, v47);
    goto LABEL_22;
  }

  v25 = v17;
  CFProperty = IORegistryEntryCreateCFProperty(v17, @"has-xart", kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v27 = CFProperty;
    v28 = CFGetTypeID(CFProperty);
    if (v28 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(v27, kCFNumberSInt32Type, &valuePtr);
      if (valuePtr)
      {
        v36 = "IODeviceTree:/defaults/has-xart found\n";
      }

      else
      {
        v36 = "IODeviceTree:/defaults/has-xart found but is zero\n";
      }

      if (valuePtr)
      {
        v7 = 1;
      }

      else
      {
        v7 = v7;
      }
    }

    else
    {
      v44 = CFGetTypeID(v27);
      if (v44 != CFDataGetTypeID())
      {
        goto LABEL_20;
      }

      *buffer = 0;
      if (CFDataGetLength(v27) == 4)
      {
        v50.location = 0;
        v50.length = 4;
        CFDataGetBytes(v27, v50, buffer);
        if (*buffer)
        {
          ramrod_log_msg("IODeviceTree:/defaults/has-xart found\n", v29, v30, v31, v32, v33, v34, v35, v47);
          v7 = 1;
          goto LABEL_20;
        }

        v36 = "IODeviceTree:/defaults/has-xart found but is zero\n";
      }

      else
      {
        v36 = "IODeviceTree:/defaults/has-xart found but is not int sized\n";
      }
    }

    ramrod_log_msg(v36, v29, v30, v31, v32, v33, v34, v35, v47);
LABEL_20:
    CFRelease(v27);
  }

  IOObjectRelease(v25);
LABEL_22:
  if (v7)
  {
    v45 = "We should have an xART partition.\n";
  }

  else
  {
    v45 = "We should not have an xART partition.\n";
  }

  ramrod_log_msg(v45, v37, v38, v39, v40, v41, v42, v43, v47);
  return v7;
}

uint64_t ramrod_get_scratch_partition_device_node(char *a1, size_t __size)
{
  if (!byte_1C68D0)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C68D0, __size);
  return 1;
}

uint64_t ramrod_get_preboot_partition_device_node(char *a1, size_t __size)
{
  if (!byte_1C68F0)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C68F0, __size);
  return 1;
}

uint64_t ramrod_get_recovery_os_apfs_container_device_node(char *a1, size_t __size)
{
  if (!byte_1C6910)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C6910, __size);
  return 1;
}

uint64_t ramrod_get_recovery_os_volume_device_node(char *a1, size_t __size)
{
  if (!byte_1C6930)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C6930, __size);
  return 1;
}

uint64_t ramrod_get_recovery_preboot_partition_device_node_path(char *a1, size_t __size)
{
  if (!byte_1C6950)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C6950, __size);
  return 1;
}

uint64_t ramrod_get_iboot_system_container_device_node(char *a1, size_t __size)
{
  if (!byte_1C6970)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C6970, __size);
  return 1;
}

uint64_t ramrod_get_isc_preboot_partition_device_node_path(char *a1, size_t __size)
{
  if (!byte_1C6990)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C6990, __size);
  return 1;
}

uint64_t ramrod_get_isc_recovery_os_volume_device_node(char *a1, size_t __size)
{
  if (!byte_1C69B0)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C69B0, __size);
  return 1;
}

uint64_t ramrod_get_paired_recovery_os_volume_device_node(char *a1, size_t __size)
{
  if (!byte_1C69D0)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C69D0, __size);
  return 1;
}

uint64_t ramrod_disable_fsevents_rescan(const char *a1)
{
  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s/.fseventsd/.ramdisk-boot-done", a1);
  v2 = open_dprotected_np(__str, 512, 4, 0, 420);
  if (v2 == -1)
  {
    v11 = __error();
    v12 = *v11;
    if (v12 != 2)
    {
      strerror(*v11);
      ramrod_log_msg("%s: %s (%d)\n", v14, v15, v16, v17, v18, v19, v20, __str);
      return v12;
    }
  }

  else
  {
    v10 = v2;
    ramrod_log_msg("%s: created successfully\n", v3, v4, v5, v6, v7, v8, v9, __str);
    close(v10);
  }

  return 0;
}

uint64_t ramrod_change_filesystem_permissions_opt_err(uint64_t a1, const char *a2, int a3, CFErrorRef *a4)
{
  v7 = a1;
  v21[0] = "/sbin/mount";
  v21[1] = "-u";
  v8 = "-r";
  if (!a3)
  {
    v8 = "-w";
  }

  v21[2] = v8;
  v21[3] = a1;
  v21[4] = a2;
  v21[5] = 0;
  v16 = ramrod_execute_command(v21);
  if (v16)
  {
    ramrod_log_msg("Failed to change permissions on %s mounted at %s to %s. Error: %d.\n", v9, v10, v11, v12, v13, v14, v15, v7);
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, @"%s: Failed to change permissions on %s mounted at %s to %s. Error: %d.\n", v17, v18, v19, "ramrod_change_filesystem_permissions_opt_err");
  }

  else
  {
    ramrod_log_msg("Changed permissions on %s mounted at %s to %s\n", v9, v10, v11, v12, v13, v14, v15, v7);
    if (!a3)
    {
      ramrod_disable_fsevents_rescan(a2);
    }
  }

  return v16;
}

uint64_t ramrod_mount_filesystem_opt_err(uint64_t a1, char *a2, int a3, CFErrorRef *a4)
{
  v35[0] = "/sbin/fsck_apfs";
  v35[1] = "-fdn";
  v35[2] = a1;
  v35[3] = 0;
  v8 = calloc(1uLL, 0x30uLL);
  v8[18] = 0;
  *(v8 + 5) = 0x7FFFFFFF000000B4;
  ramrod_execute_config_set_log_output(v8);
  v8[18] = 0;
  *(v8 + 5) = 0x7FFFFFFF000000B4;
  if (ramrod_execute_command_with_config(v35, v8, v9, v10, v11, v12, v13, v14))
  {
    ramrod_log_msg("fsck failed on %s\n", v15, v16, v17, v18, v19, v20, v21, a1);
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, @"%s: fsck failed on %s", v22, v23, v24, "ramrod_mount_filesystem_opt_err");
    ramrod_dump_mounted_filesystem_info(v25, v26, v27, v28, v29, v30, v31, v32);
    v33 = 0xFFFFFFFFLL;
  }

  else
  {
    v33 = ramrod_mount_filesystem_no_fsck_opt_err(a1, a2, a3, a4);
  }

  ramrod_execute_config_free(v8);
  return v33;
}

uint64_t ramrod_mount_filesystem_no_fsck_opt_err(uint64_t a1, char *a2, int a3, CFErrorRef *a4)
{
  bzero(v51, 0x400uLL);
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43[0] = "/sbin/mount_apfs";
  v43[1] = "-R";
  if (a3)
  {
    *&v44 = "-o";
    *(&v44 + 1) = "rdonly";
    v15 = 4;
    if (a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v15 = 2;
    if (a2)
    {
      goto LABEL_7;
    }
  }

  ramrod_log_msg("Creating temporary mount point to mount %s\n", v8, v9, v10, v11, v12, v13, v14, a1);
  a2 = v51;
  __strlcpy_chk();
  if (!mkdtemp(v51))
  {
    v16 = __error();
    ramrod_log_msg("unable to create temporary mount directory (%d). Using %s instead\n", v17, v18, v19, v20, v21, v22, v23, *v16);
    a2 = v51;
    __strlcpy_chk();
  }

LABEL_7:
  v43[v15] = a1;
  v43[v15 | 1u] = a2;
  v43[v15 + 2] = 0;
  mkdir(a2, 0x1C0u);
  if (ramrod_execute_command(v43))
  {
    ramrod_log_msg("mounting %s on %s failed\n", v24, v25, v26, v27, v28, v29, v30, a1);
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, @"%s: mounting %s on %s failed", v31, v32, v33, "ramrod_mount_filesystem_no_fsck_opt_err");
    ramrod_dump_mounted_filesystem_info(v34, v35, v36, v37, v38, v39, v40, v41);
    return 0xFFFFFFFFLL;
  }

  else
  {
    ramrod_log_msg("%s mounted on %s\n", v24, v25, v26, v27, v28, v29, v30, a1);
    if (!a3)
    {
      ramrod_disable_fsevents_rescan(a2);
    }

    return 0;
  }
}

void ramrod_dump_mounted_filesystem_info(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("%s:**********DUMPING MOUNTED FILESYSTEMS********\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_dump_mounted_filesystem_info");
  v26 = 0;
  v8 = getmntinfo(&v26, 2);
  ramrod_log_msg("%s: %d filesystems are mounted\n", v9, v10, v11, v12, v13, v14, v15, "ramrod_dump_mounted_filesystem_info");
  if (v26)
  {
    if (v8 >= 1)
    {
      v23 = v8 + 1;
      v24 = 2168 * v8 - 2080;
      do
      {
        ramrod_log_msg("%s is mounted at %s\n", v16, v17, v18, v19, v20, v21, v22, v26 + v24);
        --v23;
        v24 -= 2168;
      }

      while (v23 > 1);
    }
  }

  else
  {
    ramrod_log_msg("Failed to get info regarding mounted filesystems\n", v16, v17, v18, v19, v20, v21, v22, v25);
  }

  ramrod_log_msg("%s: *********DONE DUMPING MOUNTED FILESYSTEMS********\n", v16, v17, v18, v19, v20, v21, v22, "ramrod_dump_mounted_filesystem_info");
}

uint64_t ramrod_mount_preboot_tmp(uint64_t a1, char *__dst, size_t a3)
{
  strlcpy(__dst, "/mnt5/preboot-mount-XXXXXX", a3);
  if (mkdtemp(__dst))
  {
    if (ramrod_mount_filesystem_no_fsck_opt_err(a1, __dst, 0, 0))
    {
      ramrod_log_msg("unable to mount preboot %s on %s: %d\n", v5, v6, v7, v8, v9, v10, v11, a1);
      return 0xFFFFFFFFLL;
    }

    else
    {
      ramrod_log_msg("mounted preboot (%s) on %s\n", v5, v6, v7, v8, v9, v10, v11, a1);
      return 0;
    }
  }

  else
  {
    v13 = __error();
    v12 = *v13;
    ramrod_log_msg("unable to create mount directory: %d\n", v14, v15, v16, v17, v18, v19, v20, *v13);
  }

  return v12;
}

uint64_t ramrod_fsck_filesystem_ignore_encryption_err(uint64_t a1, int a2, CFErrorRef *a3)
{
  v4 = a1;
  v5 = "-dyo";
  if (a2)
  {
    v5 = "-dyoM";
  }

  v33[0] = "/sbin/fsck_apfs";
  v33[1] = v5;
  v33[2] = a1;
  v33[3] = 0;
  xpc_transaction_begin();
  ramrod_log_msg("Starting an xpc transaction.\n", v6, v7, v8, v9, v10, v11, v12, v32);
  v13 = calloc(1uLL, 0x30uLL);
  v13[18] = 0;
  *(v13 + 5) = 0x7FFFFFFF000000B4;
  ramrod_execute_config_set_log_output(v13);
  v13[18] = 0;
  *(v13 + 5) = 0x7FFFFFFF000000B4;
  if (ramrod_execute_command_with_config(v33, v13, v14, v15, v16, v17, v18, v19))
  {
    ramrod_log_msg("fsck failed on %s\n", v20, v21, v22, v23, v24, v25, v26, v4);
    if (a3)
    {
      ramrod_create_error_cf(a3, @"RamrodErrorDomain", 7, 0, @"%s: fsck failed on %s", v27, v28, v29, "ramrod_fsck_filesystem_ignore_encryption_err");
    }

    v30 = 0xFFFFFFFFLL;
  }

  else
  {
    ramrod_log_msg("fsck succeeded on %s\n", v20, v21, v22, v23, v24, v25, v26, v4);
    v30 = 0;
    if (a3)
    {
      *a3 = 0;
    }
  }

  xpc_transaction_end();
  ramrod_execute_config_free(v13);
  return v30;
}

uint64_t ramrod_clear_LwVMKey_effaceable_storage(uint64_t a1)
{
  *connect = 0;
  input = a1;
  v1 = IOServiceMatching("AppleEffaceableStorage");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v1);
  if (!MatchingService)
  {
    return 6;
  }

  v3 = MatchingService;
  if (IOServiceOpen(MatchingService, mach_task_self_, 0, &connect[1]))
  {
    v4 = 6;
  }

  else
  {
    v5 = IOConnectCallScalarMethod(connect[1], 7u, &input, 1u, 0, connect);
    if (v5 == -536870160)
    {
      v4 = 2;
    }

    else
    {
      v4 = v5;
    }
  }

  IOObjectRelease(v3);
  if (connect[1])
  {
    IOServiceClose(connect[1]);
  }

  return v4;
}

uint64_t sub_22F90(char *a1, int a2, _BYTE *a3)
{
  v6 = open(a1, 0x100000);
  if (v6 < 0)
  {
    __error();
    ramrod_log_msg("%s : Unable to open %s: %d", v44, v45, v46, v47, v48, v49, v50, "ramrod_delete_all_mobilebackup_snapshots_with_wait");
    return 1;
  }

  else
  {
    v7 = v6;
    v93.reserved = 0;
    *&v93.volattr = 0;
    *&v93.fileattr = 0;
    bzero(v94, 0x400uLL);
    v93.bitmapcount = 5;
    v93.commonattr = -1610612735;
    v8 = fs_snapshot_list(v7, &v93, v94, 0x400uLL, 0);
    if (v8 < 0)
    {
      __error();
      ramrod_log_msg("%s : fs_snapshot_list failed with error %d, errno %d\n", v51, v52, v53, v54, v55, v56, v57, "ramrod_delete_all_mobilebackup_snapshots_with_wait");
      v17 = 0;
      v16 = 1;
    }

    else if (v8)
    {
      v92 = a2;
      v16 = 0;
      v17 = 0;
      v18 = v8 + 1;
      v19 = v94;
      while (1)
      {
        v20 = (v19 + 6);
        v21 = v19[1];
        if ((v21 & 0x20000000) != 0)
        {
          break;
        }

        v22 = *v19;
        if (v21)
        {
          if (fs_snapshot_delete(v7, &v20[*v20], 0))
          {
            __error();
            ramrod_log_msg("%s : Unable to delete snapshot %s: %d\n", v30, v31, v32, v33, v34, v35, v36, "ramrod_delete_all_mobilebackup_snapshots_with_wait");
            v16 = *__error();
            if (a3)
            {
              *a3 = 1;
            }
          }

          else
          {
            ramrod_log_msg("%s : Waiting for snapshot delete to finish for %s\n", v23, v24, v25, v26, v27, v28, v29, "ramrod_delete_all_mobilebackup_snapshots_with_wait");
            if (sub_282C4(v7, 0xFu))
            {
              ramrod_log_msg("%s: Timed out waiting for snapshot(%s) to delete\n", v37, v38, v39, v40, v41, v42, v43, "ramrod_delete_all_mobilebackup_snapshots_with_wait");
              v17 = 0;
            }

            else
            {
              ramrod_log_msg("%s: Successfully deleted snapshot %s\n", v37, v38, v39, v40, v41, v42, v43, "ramrod_delete_all_mobilebackup_snapshots_with_wait");
              v17 = 1;
            }
          }
        }

        else
        {
          ramrod_log_msg("%s : Unactionable record, commonattr: %u\n", v9, v10, v11, v12, v13, v14, v15, "ramrod_delete_all_mobilebackup_snapshots_with_wait");
        }

        v19 = (v19 + v22);
        if (--v18 <= 1)
        {
          goto LABEL_20;
        }
      }

      v16 = *v20;
      ramrod_log_msg("%s : Error in reading attributes for directory entry %d\n", v9, v10, v11, v12, v13, v14, v15, "ramrod_delete_all_mobilebackup_snapshots_with_wait");
LABEL_20:
      sub_28350(a1, v9, v10, v11, v12, v13, v14, v15, v90);
      a2 = v92;
    }

    else
    {
      ramrod_log_msg("%s : No snapshots to delete on %s\n", v9, v10, v11, v12, v13, v14, v15, "ramrod_delete_all_mobilebackup_snapshots_with_wait");
      v17 = 0;
      v16 = 0;
    }

    if (!a2 || (v17 & 1) != 0)
    {
      goto LABEL_33;
    }

    ramrod_log_msg("%s: Waiting for snapshots to delete\n", v58, v59, v60, v61, v62, v63, v64, "ramrod_delete_all_mobilebackup_snapshots_with_wait");
    for (i = 0; i != 3; ++i)
    {
      v66 = sub_282C4(v7, 0x1Eu);
      if (!v66)
      {
        ramrod_log_msg("%s: Finished waiting for snapshots to delete\n", v67, v68, v69, v70, v71, v72, v73, "ramrod_delete_all_mobilebackup_snapshots_with_wait");
        goto LABEL_32;
      }

      v74 = v66;
      ramrod_log_msg("%s: Timed out waiting for snapshots to delete, attempt:%d\n", v67, v68, v69, v70, v71, v72, v73, "ramrod_delete_all_mobilebackup_snapshots_with_wait");
    }

    if (v74 != 35)
    {
      if (v74 == 17)
      {
        ramrod_log_msg("%s: Snapshot exists after deletion. Returning error\n", v75, v76, v77, v78, v79, v80, v81, "ramrod_delete_all_mobilebackup_snapshots_with_wait");
        if (a3)
        {
          *a3 = 1;
        }

        v16 = 17;
        goto LABEL_33;
      }

LABEL_32:
      ramrod_log_msg("%s: Syncing volume after snapshots deletion\n", v75, v76, v77, v78, v79, v80, v81, "ramrod_delete_all_mobilebackup_snapshots_with_wait");
      sub_28350(a1, v82, v83, v84, v85, v86, v87, v88, v91);
      goto LABEL_33;
    }

    ramrod_log_msg("%s: Returning timed out for snapshots deletion\n", v75, v76, v77, v78, v79, v80, v81, "ramrod_delete_all_mobilebackup_snapshots_with_wait");
    if (a3)
    {
      *a3 = 1;
    }

    v16 = 35;
LABEL_33:
    close(v7);
  }

  return v16;
}

uint64_t ramrod_mount_and_delete_all_mobilebackup_snapshots(const char *a1, char *a2)
{
  bzero(__s1, 0x400uLL);
  v36 = 0;
  if (!a2)
  {
    v19 = "mount path is not valid\n";
LABEL_13:
    ramrod_log_msg(v19, v4, v5, v6, v7, v8, v9, v10, v35);
    return -v36;
  }

  mount_path = ramrod_get_mount_path(a1, __s1, 0x400uLL);
  if (mount_path)
  {
    if (ramrod_mount_filesystem_no_fsck_opt_err(a1, a2, 0, 0))
    {
      ramrod_log_msg("Failed to mount %s to delete snapshots: %d\n", v12, v13, v14, v15, v16, v17, v18, a1);
      return -v36;
    }
  }

  else if (strcmp(__s1, a2))
  {
    ramrod_log_msg("Using %s mount path %s rather than supplied %s\n", v20, v21, v22, v23, v24, v25, v26, a1);
    a2 = __s1;
  }

  if (sub_22F90(a2, 1, &v36))
  {
    ramrod_log_msg("ramrod_delete_all_mobilebackup_snapshots on device %s with mount %s failed with %d, fatal is %d\n", v27, v28, v29, v30, v31, v32, v33, a1);
  }

  if (mount_path && ramrod_force_unmount_filesystem(a2, 0))
  {
    v35 = a1;
    v19 = "Failed to unmount %s after deleting snapshots\n";
    goto LABEL_13;
  }

  return -v36;
}

uint64_t ramrod_get_mount_path(const char *a1, char *a2, size_t a3)
{
  v19 = 0;
  v6 = getmntinfo_r_np(&v19, 2);
  if (!v6)
  {
    ramrod_log_msg("Failed to get list of all mounted file systems\n", v7, v8, v9, v10, v11, v12, v13, v18);
    goto LABEL_8;
  }

  if (v6 < 1)
  {
LABEL_8:
    v16 = 1;
    goto LABEL_9;
  }

  v14 = v6;
  f_mntfromname = v19->f_mntfromname;
  while (strcmp(a1, f_mntfromname))
  {
    f_mntfromname += 2168;
    if (!--v14)
    {
      goto LABEL_8;
    }
  }

  strlcpy(a2, f_mntfromname - 1024, a3);
  v16 = 0;
LABEL_9:
  if (v19)
  {
    free(v19);
  }

  return v16;
}

uint64_t ramrod_mount_and_delete_all_tmp_content(const char *a1, char *a2)
{
  bzero(__s1, 0x400uLL);
  bzero(__str, 0x400uLL);
  mount_path = ramrod_get_mount_path(a1, __s1, 0x400uLL);
  if (mount_path)
  {
    if (ramrod_mount_filesystem_no_fsck_opt_err(a1, a2, 0, 0))
    {
      v12 = 0xFFFFFFFFLL;
      ramrod_log_msg("Failed to mount %s to delete tmp content: %d\n", v5, v6, v7, v8, v9, v10, v11, a1);
      return v12;
    }

    v12 = 0;
  }

  else if (!strcmp(__s1, a2))
  {
    v12 = 0xFFFFFFFFLL;
  }

  else
  {
    ramrod_log_msg("Using %s mount path %s rather than supplied %s\n", v13, v14, v15, v16, v17, v18, v19, a1);
    v12 = 0xFFFFFFFFLL;
    a2 = __s1;
  }

  snprintf(__str, 0x400uLL, "%s/tmp", a2);
  ramrod_log_msg("Deleting content of %s\n", v20, v21, v22, v23, v24, v25, v26, __str);
  if (removefile(__str, 0, 3u))
  {
    __error();
    ramrod_log_msg("delete of tmp content on device %s with mount %s failed with %d\n", v27, v28, v29, v30, v31, v32, v33, a1);
    if (!mount_path)
    {
      return v12;
    }
  }

  else
  {
    v12 = 0;
    if (!mount_path)
    {
      return v12;
    }
  }

  if (a2 && ramrod_force_unmount_filesystem(a2, 0))
  {
    ramrod_log_msg("Failed to unmount %s after deleting tmp content\n", v34, v35, v36, v37, v38, v39, v40, a1);
  }

  return v12;
}

uint64_t device_supports_effaceable_storage()
{
  v0 = copy_property_from_registry_defaults(@"no-effaceable-storage");
  if (!v0)
  {
    return 1;
  }

  CFRelease(v0);
  return 0;
}

CFTypeRef device_supports_ean_storage()
{
  result = copy_property_from_registry_defaults(@"ean-storage-present");
  if (result)
  {
    CFRelease(result);
    return &dword_0 + 1;
  }

  return result;
}

BOOL ramrod_update_ramdisk_root_mount()
{
  bzero(&v9, 0x878uLL);
  if (!statfs("/", &v9))
  {
    return (*v9.f_fstypename ^ 0x73667061 | v9.f_fstypename[4]) == 0;
  }

  v0 = __error();
  ramrod_log_msg("statfs failed with error %d\n", v1, v2, v3, v4, v5, v6, v7, *v0);
  return 0;
}

uint64_t ramrod_force_unmount_filesystem(char *a1, int a2)
{
  v3 = (a2 != 0) << 19;
  v60 = off_1A92B8;
  v61 = unk_1A92C8;
  v4 = &v61;
  if (a2)
  {
    v5 = &v61;
    v4 = (&v61 + 8);
    *(&v60 + 1) = "-f";
  }

  else
  {
    v5 = (&v60 + 8);
  }

  *v5 = a1;
  *v4 = 0;
  v6 = 3;
  while (1)
  {
    v59 = 0;
    v58 = xmmword_10ABF4;
    memset(v56, 0, sizeof(v56));
    v57 = 0;
    if (!getattrlist(a1, &v58, v56, 0x1CuLL, 8u) && (v57 & 1) == 0)
    {
      ramrod_log_msg("Tried to unmount a volume at '%s' that wasn't mounted. Ignoring the error.\n", v7, v8, v9, v10, v11, v12, v13, a1);
      return 0;
    }

    if (!unmount(a1, v3))
    {
      return 0;
    }

    v14 = __error();
    v15 = *v14;
    v16 = v15 == 35 || v15 == 16;
    v17 = *v14;
    if (!v16)
    {
      break;
    }

LABEL_15:
    strerror(v17);
    ramrod_log_msg("Unmounting '%s' failed with %d: %s.\n", v18, v19, v20, v21, v22, v23, v24, a1);
    ramrod_dump_mounted_filesystem_info(v25, v26, v27, v28, v29, v30, v31, v32);
    ramrod_log_msg("Will retry unmounting '%s' in %u seconds.\n", v33, v34, v35, v36, v37, v38, v39, a1);
    sleep(3u);
    if (!--v6)
    {
      return v15;
    }
  }

  if (v15 == 1)
  {
    if (!ramrod_execute_command(&v60))
    {
      return 0;
    }

    v17 = 1;
    goto LABEL_15;
  }

  strerror(*v14);
  ramrod_log_msg("Unmounting '%s' failed with %d: %s.\n", v41, v42, v43, v44, v45, v46, v47, a1);
  ramrod_dump_mounted_filesystem_info(v48, v49, v50, v51, v52, v53, v54, v55);
  return v15;
}

uint64_t ramrod_unmount_all_filesystems()
{
  if (chdir("/"))
  {
    v6 = *__error();
    ramrod_log_msg("Failed to chdir to %s when unmounting file systems, errno:%d", v7, v8, v9, v10, v11, v12, v13, "/");
  }

  else
  {
    v6 = 0;
  }

  off_1C6788 = ramrod_probe_media;
  sub_208DC(3, 0, v0, v1, v2, v3, v4, v5);
  for (i = 0; i != 80; i += 8)
  {
    v15 = *(&off_1A92D8 + i);
    if (*v15)
    {
      bzero(v26, 0x400uLL);
      if (ramrod_get_mount_path(v15, v26, 0x400uLL))
      {
        ramrod_log_msg("%s is not mounted\n", v16, v17, v18, v19, v20, v21, v22, v15);
        v23 = 0;
      }

      else
      {
        ramrod_log_msg("%s is mounted at %s.\n", v16, v17, v18, v19, v20, v21, v22, v15);
        v23 = ramrod_force_unmount_filesystem(v26, 0);
      }

      if (v6)
      {
        v24 = 1;
      }

      else
      {
        v24 = v23 == 0;
      }

      if (v24)
      {
        v6 = v6;
      }

      else
      {
        v6 = v23;
      }
    }
  }

  return v6;
}

uint64_t ramrod_get_snapshot_mount_path(const char *a1, char *a2, size_t a3)
{
  v22 = 0;
  v6 = getmntinfo_r_np(&v22, 2);
  if (!v6)
  {
    ramrod_log_msg("Failed to get list of all mounted file systems\n", v7, v8, v9, v10, v11, v12, v13, v21);
    goto LABEL_9;
  }

  v14 = v6;
  if (v6 < 1)
  {
LABEL_9:
    v19 = 1;
    goto LABEL_10;
  }

  v15 = strlen(a1);
  v16 = v14;
  f_mntfromname = v22->f_mntfromname;
  while (1)
  {
    v18 = strlen(f_mntfromname);
    if (v18 >= v15 && !strcmp(a1, &f_mntfromname[v18 - v15]))
    {
      break;
    }

    f_mntfromname += 2168;
    if (!--v16)
    {
      goto LABEL_9;
    }
  }

  strlcpy(a2, f_mntfromname - 1024, a3);
  v19 = 0;
LABEL_10:
  if (v22)
  {
    free(v22);
  }

  return v19;
}

BOOL ramrod_preload_and_create_media_keys(const char *a1, char *a2, uint64_t a3, int a4)
{
  bzero(v15, 0x400uLL);
  if (sub_23CD0(a1, a2, v15))
  {
    return 0;
  }

  if (a4)
  {
    v13 = 4;
  }

  else
  {
    v13 = 0;
  }

  result = sub_23D80(a1, v15, a3, v13, v8, v9, v10, v11);
  if (result)
  {
    if (a4)
    {
      v14 = 8;
    }

    else
    {
      v14 = 0;
    }

    result = sub_23EBC(qword_1C69F0, "additional eds volume", a2, a3, v14);
    if (result)
    {
      return sub_23EBC(qword_1C69F8, "additional encrypted volume", a2, a3 | a4, 0);
    }
  }

  return result;
}

uint64_t sub_23CD0(const char *a1, char *a2, char *a3)
{
  if (!ramrod_get_mount_path(a1, a3, 0x400uLL))
  {
    ramrod_log_msg("Using %s mount path %s rather than supplied value\n", v6, v7, v8, v9, v10, v11, v12, a1);
    return 0;
  }

  if (!ramrod_mount_filesystem_no_fsck_opt_err(a1, a2, 1, 0))
  {
    strlcpy(a3, a2, 0x400uLL);
    return 0;
  }

  v13 = 0xFFFFFFFFLL;
  strerror(-1);
  ramrod_log_msg("Failed to mount %s to preload keys: %s (%d)\n", v14, v15, v16, v17, v18, v19, v20, a1);
  return v13;
}

BOOL sub_23D80(char a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a3;
  ramrod_log_msg("Calling APFS_FSCTL_UNMOUNT_CRYPTO_HINT on %s\n", a2, a3, a4, a5, a6, a7, a8, a1);
  v58 = 1;
  if (fsctl(a2, 0x80014A22uLL, &v58, 0))
  {
    if (*__error() == 17)
    {
      ramrod_log_msg("Call to APFS_FSCTL_UNMOUNT_CRYPTO_HINT on %s returned EEXIST\n", v19, v20, v21, v22, v23, v24, v25, a1);
    }

    else
    {
      __error();
      ramrod_log_msg("Failed to call APFS_FSCTL_UNMOUNT_CRYPTO_HINT on %s with errno %d\n", v26, v27, v28, v29, v30, v31, v32, a1);
      if (!v9)
      {
        goto LABEL_10;
      }

      ramrod_log_msg("Ignoring APFS_FSCTL_UNMOUNT_CRYPTO_HINT failure\n", v33, v34, v35, v36, v37, v38, v39, v56);
    }
  }

  if (v8)
  {
    ramrod_log_msg("Calling APFS_FSCTL_UNMOUNT_CRYPTO_HINT with hints:%d on %s\n", v12, v13, v14, v15, v16, v17, v18, v8);
    v57 = v8;
    v40 = fsctl(a2, 0x80014A22uLL, &v57, 0);
    v9 = v40 == 0;
    if (v40)
    {
      __error();
      ramrod_log_msg("Failed to call APFS_FSCTL_UNMOUNT_CRYPTO_HINT with hints:%d on %s with errno %d\n", v41, v42, v43, v44, v45, v46, v47, v8);
    }
  }

  else
  {
    v9 = 1;
  }

LABEL_10:
  if (ramrod_force_unmount_filesystem(a2, 0))
  {
    ramrod_log_msg("Failed to unmount %s after loading crypto keys\n", v48, v49, v50, v51, v52, v53, v54, a1);
  }

  return v9;
}

BOOL sub_23EBC(const __CFArray *a1, char a2, char *a3, uint64_t a4, uint64_t a5)
{
  if (a1 && (Count = CFArrayGetCount(a1), Count >= 1))
  {
    v11 = Count;
    v12 = 0;
    for (i = 0; i != v11; v12 = i >= v11)
    {
      bzero(v29, 0x400uLL);
      *buffer = 0u;
      v28 = 0u;
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      CFStringGetCString(ValueAtIndex, buffer, 32, 0x8000100u);
      if (sub_23CD0(buffer, a3, v29))
      {
        break;
      }

      ramrod_log_msg("Loading keys for %s %s\n", v15, v16, v17, v18, v19, v20, v21, a2);
      if (!sub_23D80(buffer, v29, a4, a5, v22, v23, v24, v25))
      {
        break;
      }

      ++i;
    }
  }

  else
  {
    return 1;
  }

  return v12;
}

uint64_t ramrod_create_readwrite_ramdisk()
{
  v89 = *off_1A9328;
  v90 = 0;
  v7 = ramrod_execute_command(&v89);
  if (v7)
  {
    ramrod_log_msg("failed to mount tmpfs\n", v0, v1, v2, v3, v4, v5, v6, v81);
  }

  *existing = 0;
  properties = 0;
  ramrod_log_msg("entering %s\n", v0, v1, v2, v3, v4, v5, v6, "show_service_nodes");
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v9 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v17 = v9;
  if (Mutable)
  {
    v18 = v9 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    ramrod_log_msg("failed to create dictionary\n", v10, v11, v12, v13, v14, v15, v16, v82);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    CFDictionarySetValue(v9, @"Whole", kCFBooleanTrue);
    CFDictionarySetValue(Mutable, @"IOPropertyMatch", v17);
    CFRelease(v17);
    MatchingServices = IOServiceGetMatchingServices(kIOMasterPortDefault, Mutable, &existing[1]);
    if (MatchingServices)
    {
      v27 = 1;
    }

    else
    {
      v27 = existing[1] == 0;
    }

    if (v27)
    {
      ramrod_log_msg("failed to show service names (no matching service dictionary) error:%d\n", v20, v21, v22, v23, v24, v25, v26, MatchingServices);
    }

    else
    {
      v28 = IOIteratorNext(existing[1]);
      if (v28)
      {
        v36 = v28;
        while (1)
        {
          existing[0] = 0;
          Iterator = IORegistryEntryCreateCFProperties(v36, &properties, kCFAllocatorDefault, 0);
          if (!Iterator && properties)
          {
            Value = CFDictionaryGetValue(properties, @"BSD Name");
            if (Value)
            {
              v39 = Value;
              bzero(buffer, 0x400uLL);
              CFStringGetCString(v39, buffer, 1024, 0x8000100u);
              ramrod_log_msg("%s\n", v40, v41, v42, v43, v44, v45, v46, buffer);
              ramrod_log_msg("\n", v47, v48, v49, v50, v51, v52, v53, v83);
            }

            Iterator = IORegistryEntryCreateIterator(v36, "IOService", 3u, existing);
            v54 = existing[0];
            if (Iterator || !existing[0])
            {
              goto LABEL_31;
            }

            v55 = IOIteratorNext(existing[0]);
            v63 = 0uLL;
            if (v55)
            {
              v64 = v55;
              do
              {
                v97 = v63;
                v98 = v63;
                v95 = v63;
                v96 = v63;
                v93 = v63;
                v94 = v63;
                *buffer = v63;
                v92 = v63;
                entryID = 0;
                busyState = 0;
                IORegistryEntryGetName(v64, buffer);
                IORegistryEntryGetRegistryEntryID(v64, &entryID);
                IOServiceGetBusyState(v64, &busyState);
                IOServiceGetState();
                ramrod_log_msg("%s RegistryID : 0x%qx Busy State : 0x%x Service State : 0x%qx\n", v65, v66, v67, v68, v69, v70, v71, buffer);
                IOObjectRelease(v64);
                v72 = IOIteratorNext(existing[0]);
                v63 = 0uLL;
                v64 = v72;
              }

              while (v72);
            }

            ramrod_log_msg("----\n", v56, v57, v58, v59, v60, v61, v62, v82);
            ramrod_log_msg("\n", v73, v74, v75, v76, v77, v78, v79, v84);
            Iterator = 0;
          }

          v54 = existing[0];
LABEL_31:
          if (v54)
          {
            IOObjectRelease(v54);
            existing[0] = 0;
          }

          if (properties)
          {
            CFRelease(properties);
            properties = 0;
          }

          IOObjectRelease(v36);
          if (!Iterator)
          {
            v36 = IOIteratorNext(existing[1]);
            if (v36)
            {
              continue;
            }
          }

          goto LABEL_39;
        }
      }

      ramrod_log_msg("failed to show service names (no initial object)\n", v29, v30, v31, v32, v33, v34, v35, v82);
    }
  }

LABEL_39:
  if (existing[1])
  {
    IOObjectRelease(existing[1]);
  }

  return v7;
}

uint64_t ramrod_eject_readwrite_ramdisk()
{
  v7 = ramrod_force_unmount_filesystem("/mnt5", 0);
  if (v7)
  {
    v8 = "failed to unmount tmpfs\n";
  }

  else
  {
    v8 = "successfully unmounted tmpfs\n";
  }

  ramrod_log_msg(v8, v0, v1, v2, v3, v4, v5, v6, v10);
  return v7;
}

uint64_t ramrod_device_has_baseband_legacy()
{
  v0 = IOServiceNameMatching("baseband");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v0);
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
    if (qword_1C6A00 != -1)
    {
      sub_D66D4();
    }

    v2 = byte_1C6A08 ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t ramrod_device_has_baseband()
{
  if (qword_1C6A00 != -1)
  {
    sub_D66D4();
  }

  return byte_1C6A08;
}

uint64_t ramrod_device_has_int()
{
  if (qword_1C6A00 != -1)
  {
    sub_D66D4();
  }

  return byte_1C6A08;
}

void sub_244C0(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFStringGetTypeID() && CFStringHasPrefix(v2, @"int"))
    {
      byte_1C6A08 = 1;
    }

    CFRelease(v2);
  }
}

uint64_t ramrod_device_expects_baseband_volume()
{
  v0 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/filesystems/fstab/baseband-vol");
  if (v0)
  {
    IOObjectRelease(v0);
    v8 = 1;
    v9 = "We should have a baseband volume.\n";
  }

  else
  {
    v8 = 0;
    v9 = "We should not have a baseband volume.\n";
  }

  ramrod_log_msg(v9, v1, v2, v3, v4, v5, v6, v7, v11);
  return v8;
}

BOOL ramrod_device_has_hoover()
{
  v0 = IOServiceNameMatching("AppleSTDP2700GPIO");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v0);
  v2 = MatchingService;
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
  }

  return v2 != 0;
}

uint64_t bootstrap_hoover(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(&v59, 0, sizeof(v59));
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "bootstrap_hoover");
  if (stat("/usr/local/standalone/firmware/STDP2700/runtime", &v59))
  {
    ramrod_log_msg("%s: using customer firmware\n", v8, v9, v10, v11, v12, v13, v14, "bootstrap_hoover");
    v15 = "/usr/standalone/firmware/STDP2700/runtime";
    if (stat("/usr/standalone/firmware/STDP2700/runtime", &v59))
    {
      ramrod_log_msg("%s: could not find a firmware file in the ram disk\n", v16, v17, v18, v19, v20, v21, v22, "bootstrap_hoover");
      return 0;
    }
  }

  else
  {
    ramrod_log_msg("%s: using factory firmware\n", v8, v9, v10, v11, v12, v13, v14, "bootstrap_hoover");
    v15 = "/usr/local/standalone/firmware/STDP2700/runtime";
  }

  v23 = dlopen("/usr/lib/libdpfu.dylib", 261);
  if (v23)
  {
    v24 = dlsym(v23, "dpfuUpdateDeviceWithContentsOfFile");
    if (v24)
    {
      v25 = v24;
      v26 = wait_for_io_service_matching_class_with_timeout("IODPDevice", 0x14u);
      if (v26)
      {
        IOObjectRelease(v26);
      }

      else
      {
        ramrod_log_msg("timed out waiting for IODPDevice service\n", v27, v28, v29, v30, v31, v32, v33, v56);
      }

      if (!v25(v15, 2, 0, 1, 0, 0))
      {
        ramrod_log_msg("%s: hoover successfully bootstrapped\n", v48, v49, v50, v51, v52, v53, v54, "bootstrap_hoover");
        return 1;
      }

      ramrod_log_msg("%s: hoover failed to bootstrap %d\n", v48, v49, v50, v51, v52, v53, v54, "bootstrap_hoover");
    }

    else
    {
      v58 = dlerror();
      ramrod_log_msg("unable to find updater function dpfuUpdateDeviceWithContentsOfFile: %s\n", v41, v42, v43, v44, v45, v46, v47, v58);
    }
  }

  else
  {
    v57 = dlerror();
    ramrod_log_msg("unable to open libdpfu.dylib. %s, skipping step\n", v34, v35, v36, v37, v38, v39, v40, v57);
  }

  return 0;
}

const __CFDictionary *ramrod_device_has_stockholm()
{
  result = IOServiceMatching("AppleStockholmControl");
  if (result)
  {
    result = IOServiceGetMatchingService(kIOMasterPortDefault, result);
    if (result)
    {
      IOObjectRelease(result);
      return (&dword_0 + 1);
    }
  }

  return result;
}

BOOL ramrod_device_is_virtual_machine()
{
  v3 = 0;
  v2 = 4;
  return !sysctlbyname("kern.hv_vmm_present", &v3, &v2, 0, 0) && v3 == 1;
}

uint64_t ramrod_create_udid_string()
{
  pthread_mutex_lock(&stru_1C4700);
  v0 = qword_1C6A10;
  if (!qword_1C6A10)
  {
    v0 = MGCopyAnswer();
    qword_1C6A10 = v0;
  }

  CFRetain(v0);
  pthread_mutex_unlock(&stru_1C4700);
  return qword_1C6A10;
}

void *ramrod_copy_NVRAM_variable_as_string(uint64_t a1, CFErrorRef *a2)
{
  v3 = ramrod_copy_NVRAM_variable(a1, a2);
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFStringGetTypeID())
    {
      v6 = CFRetain(v4);
    }

    else
    {
      if (v5 != CFDataGetTypeID())
      {
        ramrod_create_error_cf(a2, @"RamrodErrorDomain", 5, 0, @"%s: could not coerce NVRAM variable to a string: %@=%@", v8, v9, v10, "ramrod_copy_NVRAM_variable_as_string");
        v7 = 0;
        goto LABEL_9;
      }

      BytePtr = CFDataGetBytePtr(v4);
      v6 = CFStringCreateWithCString(kCFAllocatorDefault, BytePtr, 0x8000100u);
    }

    v7 = v6;
LABEL_9:
    CFRelease(v4);
    return v7;
  }

  return 0;
}

id ramrod_get_NVRAM_variable_as_BOOLean(uint64_t a1, CFErrorRef *a2)
{
  v2 = ramrod_copy_NVRAM_variable_as_string(a1, a2);

  return [v2 BOOLValue];
}

void ramrod_kickstart_aces(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v10 = Mutable;
    v11 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v11)
    {
      v19 = v11;
      CFDictionarySetValue(v10, @"IOPropertyMatch", v11);
      CFRetain(v10);
      CFDictionarySetValue(v19, @"compatible", @"usbc,cd3215");
      if (IOServiceGetMatchingService(kIOMasterPortDefault, v10))
      {
        CFRelease(v10);
        CFRelease(v19);
        goto LABEL_10;
      }

      v27 = 0;
      do
      {
        v28 = v27;
        if (v27 == 4)
        {
          break;
        }

        CFRetain(v10);
        CFDictionarySetValue(v19, @"compatible", *(&off_1A9380 + v28 + 1));
        MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v10);
        v27 = v28 + 1;
      }

      while (!MatchingService);
      CFRelease(v10);
      CFRelease(v19);
      if (v28 < 4)
      {
LABEL_10:
        ramrod_log_msg("port micro restart in progress\n", v20, v21, v22, v23, v24, v25, v26, v45);
        set_usb_forced_off_bus(1);
        if (ramrod_set_SMC_key("AC-R"))
        {
          if (ramrod_copy_NVRAM_variable(@"usbcfw.version", 0))
          {
            ramrod_set_NVRAM_variable(@"ramrod-kickstart-aces", @"1", 0);
          }

          v37 = "port micro restart in progress\n";
        }

        else
        {
          v37 = "unable to kick port micro - Couldn't set AC-R to 0\n";
        }

        ramrod_log_msg(v37, v30, v31, v32, v33, v34, v35, v36, v46);
        return;
      }
    }

    else
    {
      ramrod_log_msg("Couldn't create a propertyMatchingDict to update USB-C firmware.\n", v12, v13, v14, v15, v16, v17, v18, v45);
      CFRelease(v10);
    }
  }

  ramrod_delete_NVRAM_variable(@"ramrod-kickstart-aces", 0);

  ramrod_log_msg("No valid port micro usbc,cdXXXX value. Not restarting port micro\n", v38, v39, v40, v41, v42, v43, v44, a9);
}

BOOL ramrod_set_SMC_key(char a1)
{
  v2 = IOServiceMatching("AppleSMC");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v2);
  if (!MatchingService)
  {
    ramrod_log_msg("Couldn't find matching SMC service. Bailing.\n", v4, v5, v6, v7, v8, v9, v10, v36);
    return 0;
  }

  v11 = MatchingService;
  if (!off_1AD498 || !SMCOpenConnection())
  {
    ramrod_log_msg("Failed to open SMC connection. Bailing.\n", v4, v5, v6, v7, v8, v9, v10, v36);
    IOObjectRelease(v11);
    return 0;
  }

  SMCMakeUInt32Key();
  if (SMCGetKeyInfo())
  {
    ramrod_log_msg("Couldn't retrieve SMC Key %s. Got SMC error: %d\n", v12, v13, v14, v15, v16, v17, v18, a1);
    v19 = 0;
  }

  else
  {
    v20 = SMCWriteKeyWithKnownSize();
    v19 = v20 == 0;
    if (v20)
    {
      ramrod_log_msg("Writing SMC key %s as value %s failed with error %d\n", v21, v22, v23, v24, v25, v26, v27, a1);
    }

    SMCReadKeyAsNumeric();
    ramrod_log_msg("Read (0x%jX) for key %s\n", v28, v29, v30, v31, v32, v33, v34, 0);
  }

  IOObjectRelease(v11);
  SMCCloseConnection();
  return v19;
}

void _ramrod_reset_usbcretimer_legacy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("creating AppleTypeCRetimer obj\n", a2, a3, a4, a5, a6, a7, a8, v27);
  v8 = off_1AD490;
  if (!off_1AD490)
  {
    goto LABEL_7;
  }

  v9 = AppleTypeCRetimerUpdaterCreate();
  if (!v9)
  {
    v8 = 0;
LABEL_7:
    ramrod_log_msg_cf(@"failed to create AppleTypeCRetimer error=%@\n", v8);
    return;
  }

  v17 = v9;
  ramrod_log_msg("executing AppleTypeCRetimerUpdaterReset on AppleUSBCRetimer\n", v10, v11, v12, v13, v14, v15, v16, v28);
  v18 = AppleTypeCRetimerUpdaterReset();
  v26 = "success";
  if (!v18)
  {
    v26 = "failure";
  }

  ramrod_log_msg("AppleTypeCRetimerUpdaterReset returned %s\n", v19, v20, v21, v22, v23, v24, v25, v26);
  CFRelease(v17);
}

void sub_24E04(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    ramrod_log_msg("updater_log (%s): %s", a2, a3, a4, a5, a6, a7, a8, a1);
  }
}

void _ramrod_reset_usbcretimer_uarp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("creating AppleTypeCRetimerUARP obj\n", a2, a3, a4, a5, a6, a7, a8, v27);
  v8 = off_1AD488;
  if (!off_1AD488)
  {
    goto LABEL_7;
  }

  v9 = AppleTypeCRetimerUARPUpdaterCreate();
  if (!v9)
  {
    v8 = 0;
LABEL_7:
    ramrod_log_msg_cf(@"failed to create AppleTypeCRetimerUARP error=%@\n", v8);
    return;
  }

  v17 = v9;
  ramrod_log_msg("executing AppleTypeCRetimerUARPUpdaterReset on AppleUSBCRetimerUARP\n", v10, v11, v12, v13, v14, v15, v16, v28);
  v18 = AppleTypeCRetimerUARPUpdaterReset();
  v26 = "success";
  if (!v18)
  {
    v26 = "failure";
  }

  ramrod_log_msg("AppleTypeCRetimerUARPUpdaterReset returned %s\n", v19, v20, v21, v22, v23, v24, v25, v26);
  CFRelease(v17);
}

void ramrod_reset_usbcretimer()
{
  has_usbcretimer_legacy = ramrod_device_has_usbcretimer_legacy();
  if (has_usbcretimer_legacy)
  {
    _ramrod_reset_usbcretimer_legacy(has_usbcretimer_legacy, v1, v2, v3, v4, v5, v6, v7);
  }

  has_usbcretimer_uarp = ramrod_device_has_usbcretimer_uarp();
  if (has_usbcretimer_uarp)
  {

    _ramrod_reset_usbcretimer_uarp(has_usbcretimer_uarp, v9, v10, v11, v12, v13, v14, v15);
  }
}

void ramrod_kickstart_usbcretimer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = ramrod_copy_NVRAM_variable(@"ramrod-kickstart-appletypecretimer", 0);
  if (v9)
  {
    v17 = v9;
    ramrod_reset_usbcretimer();
    ramrod_delete_NVRAM_variable(@"ramrod-kickstart-appletypecretimer", 0);

    CFRelease(v17);
  }

  else
  {

    ramrod_log_msg("nvram not set, skipping kick.\n", v10, v11, v12, v13, v14, v15, v16, a9);
  }
}

BOOL ramrod_get_SMC_key(char a1, void *a2)
{
  v4 = IOServiceMatching("AppleSMC");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v4);
  if (!MatchingService)
  {
    ramrod_log_msg("Couldn't find matching SMC service. Bailing.\n", v6, v7, v8, v9, v10, v11, v12, v31);
    return 0;
  }

  v13 = MatchingService;
  if (!off_1AD498 || !SMCOpenConnection())
  {
    ramrod_log_msg("Failed to open SMC connection. Bailing.\n", v6, v7, v8, v9, v10, v11, v12, v31);
    IOObjectRelease(v13);
    return 0;
  }

  SMCMakeUInt32Key();
  v14 = SMCGetKeyInfo();
  v22 = v14 == 0;
  if (v14)
  {
    ramrod_log_msg("Couldn't retrieve SMC Key %s. Got SMC error: %d\n", v15, v16, v17, v18, v19, v20, v21, a1);
  }

  else
  {
    SMCReadKeyAsNumeric();
    ramrod_log_msg("Read (0x%jX) for key %s\n", v23, v24, v25, v26, v27, v28, v29, 0);
    *a2 = 0;
  }

  IOObjectRelease(v13);
  SMCCloseConnection();
  return v22;
}

uint64_t ramrod_set_rootless_flags(const char *a1)
{
  memset(&v27, 0, sizeof(v27));
  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s/%s", a1, "/private/var/db/com.apple.xpc.roleaccountd.staging");
  if (setxattr(__str, "com.apple.rootless", "RoleAccountStaging", 0x12uLL, 0, 1))
  {
    v2 = __error();
    v10 = *v2;
    if (v10 != 2)
    {
      strerror(*v2);
      ramrod_log_msg("Failed to set com.apple.rootless=RoleAccountStaging xattr on %s with error %d: %s\n", v19, v20, v21, v22, v23, v24, v25, __str);
      return v10;
    }

    ramrod_log_msg("Failed to set com.apple.rootless=RoleAccountStaging xattr on %s because the directory doesn't exist. Not fatal.\n", v3, v4, v5, v6, v7, v8, v9, __str);
    return 0;
  }

  stat(__str, &v27);
  if (!lchflags(__str, v27.st_flags | 0x80000))
  {
    return 0;
  }

  v11 = __error();
  v10 = *v11;
  strerror(*v11);
  ramrod_log_msg("Failed to set SF_RESTRICTED flag on %s with error %d: %s\n", v12, v13, v14, v15, v16, v17, v18, __str);
  return v10;
}

uint64_t asp_nand_set_writable()
{
  *mainPort = 0;
  memset(name, 0, 128);
  if (IOMasterPort(0, mainPort))
  {
    ramrod_log_msg("IOMasterPort failed\n", v0, v1, v2, v3, v4, v5, v6, v33);
    return 1;
  }

  v8 = IOServiceMatching("ASPStorage");
  if (!v8)
  {
    ramrod_log_msg("IOServiceMatching failed for %s\n", v9, v10, v11, v12, v13, v14, v15, "ASPStorage");
    return 1;
  }

  IOServiceGetMatchingServices(mainPort[0], v8, &mainPort[1]);
  if (!mainPort[1])
  {
    puts("ASPStorage instance not found!");
    return 1;
  }

  v16 = IOIteratorNext(mainPort[1]);
  if (!v16)
  {
    return 1;
  }

  v17 = v16;
  while (1)
  {
    IORegistryEntryGetName(v17, name);
    ramrod_log_msg("Service name : %s\n", v18, v19, v20, v21, v22, v23, v24, name);
    v25 = IORegistryEntrySetCFProperty(v17, @"ASPSetWritable", kCFBooleanTrue);
    if (v25)
    {
      break;
    }

    ramrod_log_msg("Set ASP writable successfully\n", v26, v27, v28, v29, v30, v31, v32, v34);
    IOObjectRelease(v17);
    v17 = IOIteratorNext(mainPort[1]);
    if (!v17)
    {
      return 1;
    }
  }

  ramrod_log_msg("Failed to set ASP writable property. err = 0x%08x occurred\n", v26, v27, v28, v29, v30, v31, v32, v25);
  return 0;
}

uint64_t dump_panic_logs_from_path(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  bzero(v24, 0x401uLL);
  ramrod_log_msg("entering %s\n", v4, v5, v6, v7, v8, v9, v10, "dump_panic_logs_from_path");
  __strlcpy_chk();
  __strlcat_chk();
  __strlcat_chk();
  v23[0] = "/usr/libexec/DumpPanic";
  v23[1] = v24;
  v23[2] = 0;
  v11 = ramrod_execute_command(v23);
  if (!v11)
  {
    return 1;
  }

  ramrod_log_msg("DumpPanic failure: %d\n", v12, v13, v14, v15, v16, v17, v18, v11);
  ramrod_create_error_cf(a3, @"RamrodErrorDomain", 7, 0, @"%s: DumpPanic failed: %d", v19, v20, v21, "dump_panic_logs_from_path");
  return 0;
}

uint64_t dump_and_return_panic_logs_from_path(uint64_t a1, const char *a2, const char **a3, void *a4, ssize_t *a5, CFErrorRef *a6)
{
  if (a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = "/mobile/Library/Logs/CrashReporter/";
  }

  bzero(__s, 0x400uLL);
  ramrod_log_msg("entering %s\n", v12, v13, v14, v15, v16, v17, v18, "dump_and_return_panic_logs_from_path");
  __strlcpy_chk();
  __strlcat_chk();
  v19 = strlen(__s);
  v20 = time(0);
  v21 = dump_panic_logs_from_path(a1, v11, a6);
  v22 = time(0);
  *a4 = 0;
  *a3 = 0;
  *a5 = 0;
  v23 = opendir(__s);
  if (!v23)
  {
    v65 = __error();
    strerror(*v65);
    ramrod_log_msg("%s: Unable to open CrashReporter directory at %s: (%s)\n", v66, v67, v68, v69, v70, v71, v72, "dump_and_return_panic_logs_from_path");
    __error();
    ramrod_create_error_cf(a6, @"RamrodErrorDomain", 11, 0, @"%s: Failed to open CrashReporter directory: %d", v73, v74, v75, "dump_and_return_panic_logs_from_path");
    return 0;
  }

  v31 = v23;
  ramrod_log_msg("Looking for logs between %ld and %ld\n", v24, v25, v26, v27, v28, v29, v30, v20);
  bzero(&v83, 0x418uLL);
  v82 = 0;
  if (readdir_r(v31, &v83, &v82) || !v82)
  {
    goto LABEL_42;
  }

  while (1)
  {
    memset(&v81, 0, sizeof(v81));
    if (v83.d_type != 8)
    {
      goto LABEL_25;
    }

    d_namlen = v83.d_namlen;
    if (v83.d_namlen < 5u)
    {
      goto LABEL_25;
    }

    if (*v83.d_name == 1768841584 && v83.d_name[4] == 99)
    {
      v41 = "panic";
    }

    else
    {
      if (v83.d_namlen < 0xAu)
      {
        goto LABEL_25;
      }

      if (*v83.d_name != 0x7365526563726F66 || *&v83.d_name[8] != 29797)
      {
        goto LABEL_25;
      }

      v41 = "forceReset";
    }

    *a3 = v41;
    if (v19 + d_namlen >= 0x400)
    {
      ramrod_log_msg("Log path name too long, skipping\n", v32, d_namlen, v33, v34, v35, v36, v37, v80);
      goto LABEL_25;
    }

    strncpy(&__s[v19], v83.d_name, d_namlen);
    __s[v19 + v83.d_namlen] = 0;
    if (!stat(__s, &v81))
    {
      break;
    }

    v49 = __error();
    ramrod_log_msg("Error %d from stat(%s)\n", v50, v51, v52, v53, v54, v55, v56, *v49);
LABEL_25:
    if (readdir_r(v31, &v83, &v82) || !v82)
    {
      goto LABEL_42;
    }
  }

  if (v81.st_ctimespec.tv_sec < v20 || v81.st_ctimespec.tv_sec > v22 || v81.st_mtimespec.tv_sec < v20 || v81.st_mtimespec.tv_sec > v22)
  {
    goto LABEL_25;
  }

  ramrod_log_msg("Found %s log at %s\n", v42, v43, v44, v45, v46, v47, v48, *a3);
  v57 = open(__s, 0);
  if (v57 < 0)
  {
    __error();
    ramrod_create_error_cf(a6, @"RamrodErrorDomain", 11, 0, @"%s: Error %d opening panic log", v76, v77, v78, "dump_and_return_panic_logs_from_path");
  }

  else
  {
    v58 = v57;
    if (v81.st_size >= 0x200000uLL)
    {
      st_size = 0x200000;
    }

    else
    {
      st_size = v81.st_size;
    }

    v63 = malloc(st_size + 1);
    if (v63)
    {
      v64 = read(v58, v63, st_size);
      *(v63 + v64) = 0;
      *a4 = v63;
      *a5 = v64;
    }

    else
    {
      ramrod_create_error_cf(a6, @"RamrodErrorDomain", 6, 0, @"%s: Could not allocate memory for panic log", v60, v61, v62, "dump_and_return_panic_logs_from_path");
    }

    close(v58);
  }

LABEL_42:
  closedir(v31);
  return v21;
}

uint64_t ramrod_parse_panic_string(const char *a1, regoff_t a2, void *a3, void *a4)
{
  if (sub_25A70(a1, a2, "(panic\\(cpu(?:[^\n\\\\]|\\\\[^n\n])*)", a3, a4) || sub_25A70(a1, a2, "Debugger message: ((?:[^\n\\\\]|\\\\[^n\n])*)", a3, a4))
  {
    return 1;
  }

  result = 0;
  *a3 = 0;
  *a4 = 0;
  return result;
}

BOOL sub_25A70(const char *a1, regoff_t a2, char *a3, void *a4, void *a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  memset(&v20, 0, sizeof(v20));
  v9 = regcomp(&v20, a3, 265);
  if (v9)
  {
    v27 = 0uLL;
    v28 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    __pmatch = 0;
    v22 = 0uLL;
    regerror(v9, &v20, &__pmatch, 0x80uLL);
    ramrod_log_msg("regcomp failed: %s\n", v13, v14, v15, v16, v17, v18, v19, &__pmatch);
    return 0;
  }

  else
  {
    v29 = 0uLL;
    v30 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    __pmatch.rm_so = 0;
    v22 = 0uLL;
    __pmatch.rm_eo = a2;
    v10 = regexec(&v20, a1, 0xAuLL, &__pmatch, 7);
    v11 = v10 == 0;
    if (!v10)
    {
      if (a4)
      {
        *a4 = &a1[v22];
      }

      if (a5)
      {
        *a5 = *(&v22 + 1) - v22;
      }
    }

    regfree(&v20);
  }

  return v11;
}

uint64_t ramrod_parse_panic_uptime(const char *a1, regoff_t a2)
{
  v11 = 0;
  __str = 0;
  v9 = 0;
  v10 = 0;
  sub_25A70(a1, a2, "Boot\\s+:\\s(\\w+)", &__str, &v10);
  sub_25A70(a1, a2, "Calendar:\\s(\\w+)", &v11, &v9);
  if (v10)
  {
    v4 = v9 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return -1;
  }

  v5 = strtol(__str, 0, 16);
  v6 = strtol(v11, 0, 16);
  if (v5 < 1 || v6 <= 0)
  {
    return -1;
  }

  else
  {
    return v6 - v5;
  }
}

uint64_t ramrod_raw_device_for_block_device(const char *a1, char *a2, size_t a3)
{
  v5 = a1;
  memset(&v23, 0, sizeof(v23));
  if (stat(a1, &v23))
  {
    v13 = __error();
    v14 = *v13;
    strerror(*v13);
    ramrod_log_msg("unable to stat block device %s: %s\n", v15, v16, v17, v18, v19, v20, v21, v5);
  }

  else if ((v23.st_mode & 0xF000) == 0x6000)
  {
    *buf = 0u;
    v25 = 0u;
    devname_r(v23.st_rdev, 0x2000u, buf, 32);
    snprintf(a2, a3, "%s%s", "/dev/", buf);
    return 0;
  }

  else
  {
    ramrod_log_msg("%s is not a block device\n", v6, v7, v8, v9, v10, v11, v12, v5);
    return 0xFFFFFFFFLL;
  }

  return v14;
}

uint64_t ramrod_register_for_button_click()
{
  if (IOHIDEventSystemCreate())
  {
    if (IOHIDEventSystemOpen())
    {
      v7 = "Registered for button events\n";
    }

    else
    {
      v7 = "IOHIDEventSystemOpen failed\n";
    }
  }

  else
  {
    v7 = "IOHIDEventSystemCreate failed\n";
  }

  ramrod_log_msg(v7, v0, v1, v2, v3, v4, v5, v6, vars0);
  return 0;
}

uint64_t sub_25DF4()
{
  if (IOHIDEventGetType() != 3)
  {
    return 1;
  }

  IntegerValue = IOHIDEventGetIntegerValue();
  IOHIDEventGetIntegerValue();
  ramrod_log_msg("%s: usage: %ld - intValue:%ld\n", v1, v2, v3, v4, v5, v6, v7, "ramrodButtonHIDEventCallBack");
  if (IntegerValue > 232)
  {
    if ((IntegerValue - 233) > 1)
    {
      return 1;
    }
  }

  else if (IntegerValue != 48 && IntegerValue != 64 && IntegerValue != 149)
  {
    return 1;
  }

  if (IOHIDEventGetIntegerValue())
  {
    if ((byte_1C6B3D[0] & 1) == 0)
    {
      v8 = 0;
      while (v8 != 4)
      {
        v9 = byte_1C6B3D[++v8];
        if (v9 == 1)
        {
          if ((v8 - 1) < 4)
          {
            goto LABEL_18;
          }

          break;
        }
      }

      if ((byte_1C6B3C & 1) == 0)
      {
        if (qword_1C6B48 != -1)
        {
          sub_D66E8();
        }

        dispatch_async(qword_1C6B50, &stru_1AD838);
      }
    }

LABEL_18:
    pthread_mutex_lock(&stru_1C4740);
    if (IntegerValue <= 148)
    {
      if (IntegerValue == 48)
      {
        v10 = byte_1C6B3D;
      }

      else
      {
        v10 = &byte_1C6B3E;
      }
    }

    else
    {
      switch(IntegerValue)
      {
        case 149:
          v10 = &byte_1C6B41;
          break;
        case 233:
          v10 = &byte_1C6B3F;
          break;
        case 234:
          v10 = &byte_1C6B40;
          break;
        default:
LABEL_36:
          pthread_mutex_unlock(&stru_1C4740);
          return 1;
      }
    }

    *v10 = 1;
    goto LABEL_36;
  }

  pthread_mutex_lock(&stru_1C4740);
  if (IntegerValue <= 148)
  {
    v11 = byte_1C6B3D;
    if (IntegerValue != 48)
    {
      v11 = &byte_1C6B3E;
    }
  }

  else
  {
    switch(IntegerValue)
    {
      case 149:
        v11 = &byte_1C6B41;
        break;
      case 233:
        v11 = &byte_1C6B3F;
        break;
      case 234:
        v11 = &byte_1C6B40;
        break;
      default:
        goto LABEL_40;
    }
  }

  *v11 = 0;
LABEL_40:
  pthread_mutex_unlock(&stru_1C4740);
  if ((byte_1C6B3D[0] & 1) == 0)
  {
    v12 = 0;
    while (v12 != 4)
    {
      v13 = byte_1C6B3D[++v12];
      if (v13 == 1)
      {
        if ((v12 - 1) < 4)
        {
          return 1;
        }

        break;
      }
    }

    if ((byte_1C6B3C & 1) == 0)
    {
      if (qword_1C6B48 != -1)
      {
        sub_D66FC();
      }

      dispatch_async(qword_1C6B50, &stru_1AD878);
    }
  }

  return 1;
}

uint64_t ramrod_wait_for_button(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  memset(v11.__opaque, 0, sizeof(v11.__opaque));
  v11.__sig = 850045863;
  v12 = 1018212795;
  v16 = a1;
  if (!IOHIDEventSystemCreate())
  {
    v8 = "IOHIDEventSystemCreate failed\n";
LABEL_8:
    ramrod_log_msg(v8, v1, v2, v3, v4, v5, v6, v7, v10);
    return 0;
  }

  if (!IOHIDEventSystemOpen())
  {
    v8 = "IOHIDEventSystemOpen failed\n";
    goto LABEL_8;
  }

  pthread_mutex_lock(&v11);
  while (!DWORD2(v15))
  {
    pthread_cond_wait(&v12, &v11);
  }

  pthread_mutex_unlock(&v11);
  IOHIDEventSystemClose();
  return 0;
}

uint64_t sub_26224(uint64_t a1, uint64_t a2)
{
  Type = IOHIDEventGetType();
  ramrod_log_msg("hid event type: %d\n", v4, v5, v6, v7, v8, v9, v10, Type);
  if (Type == 3)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    v12 = IOHIDEventGetIntegerValue();
    IOHIDEventGetIntegerValue();
    ramrod_log_msg("%s: usage_page: %ld - usage: %ld - intValue:%ld\n", v13, v14, v15, v16, v17, v18, v19, "ramrodHIDEventCallBack");
    ramrod_log_msg("%s: looking for %ld\n", v20, v21, v22, v23, v24, v25, v26, "ramrodHIDEventCallBack");
    if (IntegerValue == 12)
    {
      v27 = *(a2 + 120);
      if (!v27 || v12 == v27)
      {
        if (IOHIDEventGetIntegerValue())
        {
          pthread_mutex_lock(a2);
          *(a2 + 112) = 1;
          pthread_cond_signal((a2 + 64));
          pthread_mutex_unlock(a2);
        }
      }
    }
  }

  return 0;
}

CFTypeRef *ramrod_read_os_build_version(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    ramrod_log_msg("%s: NULL system partition mount point\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_read_os_build_version");
    return 0;
  }

  v8 = a2;
  if (!a2)
  {
    ramrod_log_msg("%s: NULL OS build version ref\n", 0, a3, a4, a5, a6, a7, a8, "ramrod_read_os_build_version");
    return v8;
  }

  if (!a3)
  {
    ramrod_log_msg("%s: NULL OS release type mount point\n", a2, 0, a4, a5, a6, a7, a8, "ramrod_read_os_build_version");
    return 0;
  }

  if (*a2)
  {
    CFRelease(*a2);
    *v8 = 0;
  }

  if (*a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  v11 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s/System/Library/CoreServices/SystemVersion.plist", a1);
  if (!v11)
  {
    ramrod_log_msg("%s: Couldn't allocate plist path string\n", v12, v13, v14, v15, v16, v17, v18, "ramrod_read_os_build_version");
    return 0;
  }

  v19 = v11;
  bzero(buffer, 0x400uLL);
  CString = CFStringGetCString(v19, buffer, 1024, 0x8000100u);
  CFRelease(v19);
  if (!CString)
  {
    ramrod_log_msg("%s: Couldn't get c-string with plist path\n", v21, v22, v23, v24, v25, v26, v27, "ramrod_read_os_build_version");
    return 0;
  }

  dictionary_from_plist = create_dictionary_from_plist(buffer, 0);
  if (!dictionary_from_plist)
  {
    ramrod_log_msg("%s: Unable to read system version plist\n", v29, v30, v31, v32, v33, v34, v35, "ramrod_read_os_build_version");
    return 0;
  }

  v36 = dictionary_from_plist;
  Value = CFDictionaryGetValue(dictionary_from_plist, @"ProductBuildVersion");
  *v8 = Value;
  v8 = (Value != 0);
  if (Value)
  {
    CFRetain(Value);
    v45 = CFDictionaryGetValue(v36, @"ReleaseType");
    *a3 = v45;
    if (v45)
    {
      CFRetain(v45);
    }
  }

  else
  {
    ramrod_log_msg("%s: Unable to read build version from plist", v38, v39, v40, v41, v42, v43, v44, "ramrod_read_os_build_version");
  }

  CFRelease(v36);
  return v8;
}

CFTypeRef *ramrod_read_previous_os_build_version(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  os_build_version = ramrod_read_os_build_version(a1, &previous_os_build_version, &previous_os_release_type, a4, a5, a6, a7, a8);
  if (os_build_version)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    *buffer = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    *v17 = 0u;
    v18 = 0u;
    if (!CFStringGetCString(previous_os_build_version, buffer, 256, 0x8000100u))
    {
      __strlcpy_chk();
    }

    if (!previous_os_release_type || !CFStringGetCString(previous_os_release_type, v17, 256, 0x8000100u))
    {
      __strlcpy_chk();
    }

    ramrod_log_msg("%s: previous OS version: %s (%s)\n", v9, v10, v11, v12, v13, v14, v15, "ramrod_read_previous_os_build_version");
  }

  return os_build_version;
}

CFTypeRef *ramrod_read_new_os_build_version(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  os_build_version = ramrod_read_os_build_version(a1, &new_os_build_version, &new_os_release_type, a4, a5, a6, a7, a8);
  if (os_build_version)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    *buffer = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    *v17 = 0u;
    v18 = 0u;
    if (!CFStringGetCString(new_os_build_version, buffer, 256, 0x8000100u))
    {
      __strlcpy_chk();
    }

    if (!new_os_release_type || !CFStringGetCString(new_os_release_type, v17, 256, 0x8000100u))
    {
      __strlcpy_chk();
    }

    ramrod_log_msg("%s: new OS version: %s (%s)\n", v9, v10, v11, v12, v13, v14, v15, "ramrod_read_new_os_build_version");
  }

  return os_build_version;
}

BOOL ramrod_plugin_done_is_last(const __CFNumber *a1)
{
  ++dword_1C6A18;
  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  return valuePtr == dword_1C6A18;
}

uint64_t ramrod_reallocate_main_container(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_1C67B0)
  {
    ramrod_log_msg("Resizing main OS container to %lld bytes (0 mean max size of partition) \n", a2, a3, a4, a5, a6, a7, a8, a1);
    v8 = APFSContainerResize();
    if (v8)
    {
      ramrod_log_msg("APFSContainerResize failed: %d\n", v9, v10, v11, v12, v13, v14, v15, v8);
      return 0;
    }
  }

  else
  {
    ramrod_log_msg("apfs_container_device_node_path wasn't created yet, skipping resize of container (partition resized already \n", a2, a3, a4, a5, a6, a7, a8, v17);
  }

  return 1;
}

uint64_t ramrod_resize_container(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = dispatch_time(0, 900000000000);
  global_queue = dispatch_get_global_queue(2, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3254779904;
  v9[2] = sub_26A00;
  v9[3] = &unk_1AD778;
  v9[4] = &v10;
  v9[5] = a1;
  dispatch_after(v5, global_queue, v9);
  *a3 = 0;
  v7 = APFSContainerResizeEx();
  *(v11 + 24) = 1;
  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_269E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26A00(uint64_t a1)
{
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    if (APFSCancelContainerResize())
    {
      ramrod_log_msg("ramrod_resize_container: Failed to cancel resize container %s, %d.\n", v2, v3, v4, v5, v6, v7, v8, *(a1 + 40));
    }

    else
    {
      ramrod_log_msg("ramrod_resize_container: Canceled resize container %s.\n", v2, v3, v4, v5, v6, v7, v8, *(a1 + 40));
    }
  }
}

uint64_t ramrod_shrink_main_os_container_with_error(unint64_t a1, unint64_t a2, void *a3, CFTypeRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = 0;
  v48 = 0;
  v49 = 0;
  cf = 0;
  if (!byte_1C67B0)
  {
    v17 = @"%s: APFS main container doesn't exist";
    v16 = 8;
    v18 = 8;
LABEL_5:
    ramrod_create_error_cf(&cf, @"RamrodErrorDomain", v18, 0, v17, a6, a7, a8, "ramrod_shrink_main_os_container_with_error");
    goto LABEL_16;
  }

  SpaceInfo = APFSContainerGetSpaceInfo();
  if (SpaceInfo)
  {
    v44 = SpaceInfo;
    __error();
    ramrod_create_error_cf(&cf, @"RamrodErrorDomain", 7, 0, @"%s: Failed getting %s container space information. status: %d, errno: %d", v13, v14, v15, "ramrod_shrink_main_os_container_with_error");
    v16 = v44;
    goto LABEL_16;
  }

  MinimalSize = APFSContainerGetMinimalSize();
  if (MinimalSize)
  {
    v45 = MinimalSize;
    __error();
    ramrod_create_error_cf(&cf, @"RamrodErrorDomain", 7, 0, @"%s: Failed getting %s container minimum allowed space. status: %d, errno: %d", v27, v28, v29, "ramrod_shrink_main_os_container_with_error");
    v16 = v45;
    goto LABEL_16;
  }

  if (v50 < a1 || v50 < a2)
  {
    v16 = 2;
    ramrod_create_error_cf(&cf, @"RamrodErrorDomain", 2, 0, @"%s: Unexpected arguments and/or APFS results. main_container_min_allowed_size: %llu, current_container_size: %llu, max_recovery_os_extra_size: %llu, min_recovery_os_extra_size: %llu", v24, v25, v26, "ramrod_shrink_main_os_container_with_error");
  }

  else
  {
    ramrod_log_msg("The container in %s current size is %lldMiB with min allowed size of %lldMiB. Asked to shrink by %lldMiB to %lldMiB.\n", v20, v21, v22, v23, v24, v25, v26, &byte_1C67B0);
    if (v50 - v48 >= a2)
    {
      v30 = a2;
    }

    else
    {
      v30 = v50 - v48;
    }

    if (v30 < a1)
    {
      v17 = CFSTR("%s: Device doesn't have enough space to install recovery OS (max shrink offset %llu, minimum needed space %llu, maximum needed space %llu");
      v16 = 7;
LABEL_23:
      v18 = 7;
      goto LABEL_5;
    }

    v32 = ramrod_resize_container(&byte_1C67B0, v50 - v30, &v48);
    if (v32)
    {
      v16 = v32;
      __error();
      v17 = @"%s: Failed resizeing %s container. status: %d, errno:%d  (asked resize to %llu, estimated min possible size is %llu)";
      goto LABEL_23;
    }

    v49 = 0;
    v33 = APFSContainerGetSpaceInfo();
    if (v33)
    {
      v46 = v33;
      __error();
      ramrod_create_error_cf(&cf, @"RamrodErrorDomain", 7, 0, @"%s: Failed geting post resize %s container space information. status: %d, errno: %d", v41, v42, v43, "ramrod_shrink_main_os_container_with_error");
      v16 = v46;
    }

    else
    {
      ramrod_log_msg("After resize for container %s we have, container_size %llu.\n", v34, v35, v36, v37, v38, v39, v40, &byte_1C67B0);
      v16 = 0;
      if (a3)
      {
        *a3 = v50 - v49;
      }
    }
  }

LABEL_16:
  if (cf)
  {
    ramrod_log_msg_cf(@"ramrod_shrink_main_os_container failed: %@", cf);
    if (a4)
    {
      *a4 = cf;
    }

    else
    {
      CFRelease(cf);
    }
  }

  return v16;
}

uint64_t ramrod_cancel_main_os_container_resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_1C67B0)
  {
    v15 = APFSCancelContainerResize();
    if (v15)
    {
      ramrod_log_msg("Failed to cancel resize for container %s, %d.\n", v8, v9, v10, v11, v12, v13, v14, &byte_1C67B0);
    }

    else
    {
      ramrod_log_msg("Canceled resize for container %s.\n", v8, v9, v10, v11, v12, v13, v14, &byte_1C67B0);
    }
  }

  else
  {
    ramrod_log_msg("APFS main container doesn't exist.\n", a2, a3, a4, a5, a6, a7, a8, v17);
    return 0xFFFFFFFFLL;
  }

  return v15;
}

uint64_t ramrod_get_device_size(const char *a1)
{
  v1 = a1;
  v31 = 0;
  v30 = 0;
  v2 = open(a1, 0);
  if (v2 == -1)
  {
    v21 = __error();
    strerror(*v21);
    ramrod_log_msg("unable to open %s: %s\n", v22, v23, v24, v25, v26, v27, v28, v1);
    return 0;
  }

  else
  {
    v3 = v2;
    if (ioctl(v2, 0x40046418uLL, &v31) == -1)
    {
      v4 = __error();
      v29 = strerror(*v4);
      ramrod_log_msg("unable to get DKIOCGETBLOCKSIZE for %s: %s\n", v5, v6, v7, v8, v9, v10, v11, v1);
      v31 = 0;
    }

    if (ioctl(v3, 0x40086419uLL, &v30, v29) == -1)
    {
      v12 = __error();
      strerror(*v12);
      ramrod_log_msg("unable to get DKIOCGETBLOCKCOUNT for %s: %s\n", v13, v14, v15, v16, v17, v18, v19, v1);
      v30 = 0;
    }

    close(v3);
    return v30 * v31;
  }
}

uint64_t ramrod_convert_eds_volumes(uint64_t a1, CFErrorRef *a2)
{
  if (!qword_1C69F0)
  {
    return 0;
  }

  Count = CFArrayGetCount(qword_1C69F0);
  v12 = Count;
  if (Count >= 2)
  {
    ramrod_log_msg("Found %ld eds volumes, expected only 1, this is a BUG!\n", v5, v6, v7, v8, v9, v10, v11, Count);
    goto LABEL_5;
  }

  if (Count != 1)
  {
    return 0;
  }

LABEL_5:
  v13 = 0;
  while (1)
  {
    *buffer = 0u;
    v55 = 0u;
    ValueAtIndex = CFArrayGetValueAtIndex(qword_1C69F0, v13);
    CFStringGetCString(ValueAtIndex, buffer, 32, 0x8000100u);
    ramrod_log_msg("Converting eds volume %s\n", v15, v16, v17, v18, v19, v20, v21, buffer);
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    v56[0] = "/System/Library/Filesystems/apfs.fs/apfs_vol_converter";
    memset(v64, 0, sizeof(v64));
    if (ramrod_raw_device_for_block_device(buffer, v64, 0x20uLL))
    {
      ramrod_log_msg("Failed to convert block device path %s into character device node path\n", v22, v23, v24, v25, v26, v27, v28, buffer);
      v46 = 3;
      ramrod_create_error_cf(a2, @"RamrodErrorDomain", 3, 0, @"%s: Failed to find raw data device", v48, v49, v50, "ramrod_convert_eds_volume");
      return v46;
    }

    v56[1] = "-v";
    if (a1)
    {
      *&v57 = "-m";
      *(&v57 + 1) = a1;
      v29 = 4;
    }

    else
    {
      v29 = 2;
    }

    v30 = &v56[v29];
    *v30 = "-l";
    v30[1] = "/mnt5/apfs_vol_converter.log";
    v30[2] = v64;
    v30[3] = 0;
    ramrod_log_msg("Running apfs_vol_converter on volume %s\n", v22, v23, v24, v25, v26, v27, v28, buffer);
    v31 = ramrod_execute_command(v56);
    if (v31)
    {
      break;
    }

    ramrod_log_msg("Successfully returned after running apfs_vol_converter on %s\n", v32, v33, v34, v35, v36, v37, v38, buffer);
    ramrod_log_msg("Removing %s on success\n", v39, v40, v41, v42, v43, v44, v45, "/mnt5/apfs_vol_converter.log");
    unlink("/mnt5/apfs_vol_converter.log");
    if (v12 == ++v13)
    {
      return 0;
    }
  }

  ramrod_log_msg("Execution of apfs_vol_converter returned an error %d\n", v32, v33, v34, v35, v36, v37, v38, v31);
  v46 = 7;
  ramrod_create_error_cf(a2, @"RamrodErrorDomain", 7, 0, @"%s: Failed to convert eds volume", v51, v52, v53, "ramrod_convert_eds_volume");
  return v46;
}

uint64_t ramrod_is_data_volume_split_required()
{
  if (qword_1C6A20 != -1)
  {
    sub_D6710();
  }

  return byte_1C6A1C;
}

void sub_27210(id a1)
{
  v1 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/filesystems");
  if (v1)
  {
    v2 = v1;
    CFProperty = IORegistryEntryCreateCFProperty(v1, @"e-apfs", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      CFRelease(CFProperty);
      IOObjectRelease(v2);
      ramrod_log_msg("%s: YES, enhanced apfs is supported\n", v4, v5, v6, v7, v8, v9, v10, "ramrod_is_data_volume_split_required_block_invoke");
      byte_1C6A1C = 1;
      return;
    }

    IOObjectRelease(v2);
  }

  v33 = 0;
  if (sysctlbyname("kern.bootargs", 0, &v33, 0, 0))
  {
    ramrod_log_msg("%s: failed to get kern.bootargs length\n", v11, v12, v13, v14, v15, v16, v17, "ramrod_is_data_volume_split_required_block_invoke");
  }

  else
  {
    v18 = calloc(1uLL, v33 + 1);
    if (sysctlbyname("kern.bootargs", v18, &v33, 0, 0))
    {
      ramrod_log_msg("%s: failed to get kern.bootargs\n", v19, v20, v21, v22, v23, v24, v25, "ramrod_is_data_volume_split_required_block_invoke");
    }

    else if (strstr(v18, "-apfs_restorevf_enabled"))
    {
      ramrod_log_msg("%s: YES, -apfs_restorevf_enabled in boot-args\n", v26, v27, v28, v29, v30, v31, v32, "ramrod_is_data_volume_split_required_block_invoke");
      byte_1C6A1C = 1;
    }

    else
    {
      ramrod_log_msg("%s: NO\n", v26, v27, v28, v29, v30, v31, v32, "ramrod_is_data_volume_split_required_block_invoke");
    }

    free(v18);
  }
}

uint64_t _ramrod_device_has_sandcat()
{
  if (qword_1C6A30 != -1)
  {
    sub_D6724();
  }

  return byte_1C6A28;
}

void sub_273C8(id a1)
{
  v1 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/arm-io/sep/iop-sep-nub/Sandcat");
  if (v1)
  {
    byte_1C6A28 = 1;

    IOObjectRelease(v1);
  }
}

uint64_t ramrod_is_device_needs_crypto_migration(const char *a1, char *a2)
{
  bzero(v41, 0x400uLL);
  if (a1 && *a1)
  {
    mount_path = ramrod_get_mount_path(a1, v41, 0x400uLL);
    if (!mount_path)
    {
      goto LABEL_18;
    }

    if (!a2)
    {
      ramrod_log_msg("%s: mount path is not valid\n", v11, v12, v13, v14, v15, v16, v17, "ramrod_is_device_needs_crypto_migration");
      return 1;
    }

    if (ramrod_mount_filesystem_no_fsck_opt_err(a1, a2, 0, 0))
    {
      ramrod_log_msg("%s: Failed to mount %s for checking crypto migration: %d\n", v19, v20, v21, v22, v23, v24, v25, "ramrod_is_device_needs_crypto_migration");
    }

    else
    {
LABEL_18:
      if (APFSVolumeNeedsCryptoMigration())
      {
        ramrod_log_msg("%s: Calling APFSVolumeNeedsCryptoMigration on %s failed with error %d\n", v27, v28, v29, v30, v31, v32, v33, "ramrod_is_device_needs_crypto_migration");
      }

      ramrod_log_msg("%s: crypto migration for device %s is %s\n", v27, v28, v29, v30, v31, v32, v33, "ramrod_is_device_needs_crypto_migration");
      if (a2 && mount_path && ramrod_force_unmount_filesystem(a2, 0))
      {
        ramrod_log_msg("%s: Failed to unmount %s after deleting snapshots\n", v34, v35, v36, v37, v38, v39, v40, "ramrod_is_device_needs_crypto_migration");
      }
    }
  }

  else
  {
    ramrod_log_msg("%s: invalid device name\n", v4, v5, v6, v7, v8, v9, v10, "ramrod_is_device_needs_crypto_migration");
  }

  return 1;
}

uint64_t ramrod_connect_to_ioservice(const char *a1, io_service_t *a2, io_connect_t *a3)
{
  v5 = a1;
  v6 = IOServiceMatching(a1);
  if (v6)
  {
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
    if (MatchingService)
    {
      v22 = MatchingService;
      connect = 0;
      if (!IOServiceOpen(MatchingService, mach_task_self_, 0, &connect))
      {
        *a2 = v22;
        *a3 = connect;
        return 1;
      }

      ramrod_log_msg("IOServiceOpen failed for class '%s'\n", v23, v24, v25, v26, v27, v28, v29, v5);
    }

    else
    {
      ramrod_log_msg("IOServiceGetMatchingService failed\n", v15, v16, v17, v18, v19, v20, v21, v31);
    }
  }

  else
  {
    ramrod_log_msg("IOServiceMatching failed for %s\n", v7, v8, v9, v10, v11, v12, v13, v5);
  }

  return 0;
}

uint64_t ramrod_generate_apslot_copy_nonce(_DWORD *a1, CFDataRef *a2)
{
  v35 = 4;
  *connection = 0;
  v34 = 32;
  *bytes = 0u;
  v38 = 0u;
  if (!ramrod_connect_to_ioservice("AppleMobileApNonce", &connection[1], connection))
  {
    ramrod_log_msg("Failed to connect to AppleMobileApNonce to generate AP nonce slot.\n", v4, v5, v6, v7, v8, v9, v10, outputStruct);
    goto LABEL_5;
  }

  v11 = connection[0];
  v12 = IOConnectCallMethod(connection[0], 0xC8u, 0, 0, 0, 0, 0, 0, bytes, &v34);
  if (v12)
  {
    mach_error_string(v12);
    ramrod_log_msg("IOConnectCallMethod(%s,%u) failed: %s\n", v13, v14, v15, v16, v17, v18, v19, "AppleMobileApNonce");
LABEL_5:
    v20 = 0;
    goto LABEL_6;
  }

  v20 = calloc(1uLL, 4uLL);
  v25 = IOConnectCallMethod(v11, 0xCBu, 0, 0, 0, 0, 0, 0, v20, &v35);
  if (v25)
  {
    mach_error_string(v25);
    ramrod_log_msg("IOConnectCallMethod(%s,%u) failed: %s\n", v26, v27, v28, v29, v30, v31, v32, "AppleMobileApNonce");
LABEL_6:
    v21 = 0;
    v22 = 0;
    v23 = 0;
    if (!a1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v21 = *v20;
  v22 = CFDataCreate(kCFAllocatorDefault, bytes, 32);
  v23 = 1;
  if (a1)
  {
LABEL_7:
    *a1 = v21;
  }

LABEL_8:
  if (a2)
  {
    *a2 = v22;
  }

  else if (v22)
  {
    CFRelease(v22);
  }

  if (v20)
  {
    free(v20);
  }

  if (connection[1])
  {
    IOObjectRelease(connection[1]);
  }

  if (connection[0])
  {
    IOObjectRelease(connection[0]);
  }

  return v23;
}

uint64_t ramrod_generate_sepslot_copy_nonce(_DWORD *a1, CFDataRef *a2)
{
  *bytes = 0;
  v30 = 0;
  v31 = 0;
  length = 20;
  *connection = 0;
  output = 0;
  outputCnt = 1;
  if (ramrod_connect_to_ioservice("AppleSEPManager", &connection[1], connection))
  {
    v11 = connection[0];
    v12 = IOConnectCallMethod(connection[0], 0x53u, 0, 0, 0, 0, &output, &outputCnt, bytes, &length);
    if (v12)
    {
      mach_error_string(v12);
      ramrod_log_msg("IOConnectCallMethod(%s,%u) failed: %s\n", v13, v14, v15, v16, v17, v18, v19, "AppleSEPManager");
      v20 = 0;
      v21 = 0;
      v22 = 0;
    }

    else
    {
      v21 = output;
      v22 = CFDataCreate(kCFAllocatorDefault, bytes, length);
      v20 = 1;
    }

    if (connection[1])
    {
      IOObjectRelease(connection[1]);
    }

    if (v11)
    {
      IOObjectRelease(v11);
    }

    if (a1)
    {
      *a1 = v21;
    }

    if (a2)
    {
      *a2 = v22;
    }

    else if (v22)
    {
      CFRelease(v22);
    }
  }

  else
  {
    ramrod_log_msg("Failed to connect to AppleSEPManager to generate sep nonce.\n", v4, v5, v6, v7, v8, v9, v10, outputStruct);
    return 0;
  }

  return v20;
}

BOOL ramrod_should_disable_sep_load()
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  *__s1 = 0u;
  v3 = 0u;
  v1 = 256;
  if (!sysctlbyname("kern.bootargs", __s1, &v1, 0, 0))
  {
    return strstr(__s1, "ramrod_disable_sep_load=1") != 0;
  }

  perror("sysctlbyname(kern.bootargs) -> 0");
  return 0;
}

BOOL ramrod_should_use_sep()
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  *__s1 = 0u;
  v3 = 0u;
  v1 = 256;
  if (sysctlbyname("kern.bootargs", __s1, &v1, 0, 0))
  {
    perror("sysctlbyname(kern.bootargs) -> 0");
    return 0;
  }

  else
  {
    return !strstr(__s1, "ramrod_disable_sep_load=1") || strstr(__s1, "ramrod_reload_sep_image=1") != 0;
  }
}

uint64_t ramrod_stash_info_to_file(uint64_t a1, uint64_t a2, uint64_t a3, NSMutableDictionary *a4, int a5)
{
  ramrod_log_msg_cf(@"%s: Stashing info to mount:%s dir:%s file:%s\n", "ramrod_stash_info_to_file", a1, a2, a3);
  if (!a1 || !a2 || !a3 || !a4)
  {
    ramrod_log_msg_cf(@"%s: missing parameters\n", "ramrod_stash_info_to_file", v67, v68);
    return 0;
  }

  ramrod_log_msg_cf(@"%s: Dictionary is %@\n", "ramrod_stash_info_to_file", a4);
  v10 = [[NSString stringWithCString:?], "stringByAppendingPathComponent:", [NSString stringWithCString:a2]];
  if (!v10)
  {
    ramrod_log_msg("%s: Failed to allocate path string to save persisted state\n", v11, v12, v13, v14, v15, v16, v17, "ramrod_stash_info_to_file");
    return 0;
  }

  v18 = v10;
  v19 = +[NSFileManager defaultManager];
  v73 = 0;
  if ([(NSFileManager *)v19 fileExistsAtPath:v18 isDirectory:&v73])
  {
    if ((v73 & 1) == 0)
    {
      ramrod_log_msg_cf(@"%s: Directory(%@) doesn't exist but a file exists with the same name at that location. Cannot proceed.\n", "ramrod_stash_info_to_file", v18, v68);
      return 0;
    }
  }

  else
  {
    ramrod_log_msg_cf(@"%s: Creating directory(%@) to save current state\n", "ramrod_stash_info_to_file", v18);
    v72 = 0;
    if (![(NSFileManager *)v19 createDirectoryAtPath:v18 withIntermediateDirectories:1 attributes:0 error:&v72])
    {
      ramrod_log_msg_cf(@"%s: Failed to create directory. Error: %@\n", "ramrod_stash_info_to_file", v72, v68);
      return 0;
    }
  }

  v20 = [(NSString *)v18 stringByAppendingPathComponent:[NSString stringWithCString:a3]];
  if (v20)
  {
    v28 = v20;
    if (a5)
    {
      ramrod_log_msg("%s: Attempting to read the current file so we can modify it\n", v21, v22, v23, v24, v25, v26, v27, "ramrod_stash_info_to_file");
      v29 = [NSMutableDictionary dictionaryWithContentsOfFile:v28];
      if (v29)
      {
        v37 = v29;
        [(NSMutableDictionary *)v29 addEntriesFromDictionary:a4];
        a4 = v37;
      }

      else
      {
        ramrod_log_msg("%s: No existing file\n", v30, v31, v32, v33, v34, v35, v36, "ramrod_stash_info_to_file");
      }
    }

    ramrod_log_msg_cf(@"%s: Saving data to %@\n", "ramrod_stash_info_to_file", v28);
    if (([(NSMutableDictionary *)a4 writeToFile:v28 atomically:1]& 1) != 0)
    {
      ramrod_log_msg("%s: Updating file permissions\n", v38, v39, v40, v41, v42, v43, v44, "ramrod_stash_info_to_file");
      v45 = [(NSString *)v28 UTF8String];
      if (v45)
      {
        v53 = v45;
        if (chmod(v45, 0x1F8u))
        {
          v54 = *__error();
          v55 = __error();
          v70 = strerror(*v55);
          ramrod_log_msg_cf(@"%s: Failed to chmod bootedOsStateFile at %@ errno=%d: (%s)..Deleting the file", "fixup_permissions_for_bootedos_state_file", v28, v54, v70);
        }

        else
        {
          v64 = getpwnam("mobile");
          if (v64)
          {
            if (!chown(v53, v64->pw_uid, v64->pw_gid))
            {
              ramrod_log_msg_cf(@"%s: Successfully fixed up permissions for %@", "fixup_permissions_for_bootedos_state_file", v28);
              return 1;
            }

            v65 = *__error();
            v66 = __error();
            v71 = strerror(*v66);
            ramrod_log_msg_cf(@"%s: Failed to chown bootedOSStateFile at %@ errno=%d: (%s)..Deleting the file", "fixup_permissions_for_bootedos_state_file", v28, v65, v71);
          }

          else
          {
            ramrod_log_msg_cf(@"%s: Failed to get uid/gid for mobile user to chown the bootedOSState file..Deleting the file at %@", "fixup_permissions_for_bootedos_state_file", v28, v68, v69);
          }
        }
      }

      else
      {
        ramrod_log_msg("%s: Failed to get c string representation of the bootedOSStateFile path to fixup permissions..Deleting the file", v46, v47, v48, v49, v50, v51, v52, "fixup_permissions_for_bootedos_state_file");
      }

      ramrod_log_msg("%s: Failed to set permissions on stashed file..Deleting it\n", v56, v57, v58, v59, v60, v61, v62, "ramrod_stash_info_to_file");
      v72 = 0;
      [(NSFileManager *)v19 removeItemAtPath:v28 error:&v72];
      if (v72)
      {
        ramrod_log_msg_cf(@"%s: Failed to delete persisted file at %@. Error: %@", "ramrod_stash_info_to_file", v28, v72);
      }
    }

    else
    {
      ramrod_log_msg("%s: Failed to write env data to file\n", v38, v39, v40, v41, v42, v43, v44, "ramrod_stash_info_to_file");
    }
  }

  else
  {
    ramrod_log_msg("%s: Failed to allocate string for the stashed file path\n", v21, v22, v23, v24, v25, v26, v27, "ramrod_stash_info_to_file");
  }

  return 0;
}

void ramrod_clear_apt_carvout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  ramrod_log_msg("Entering %s\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_clear_apt_carvout");
  v9 = IOServiceNameMatching("AppleProcessorTraceNub");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v9);
  if (MatchingService)
  {
    v18 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"DeviceCapabilities", kCFAllocatorDefault, 0);
    if (!CFProperty || (v27 = CFProperty, v28 = CFGetTypeID(CFProperty), v28 != CFDictionaryGetTypeID()))
    {
      ramrod_log_msg("Device had no DeviceCapabilities dictionary?", v20, v21, v22, v23, v24, v25, v26, v40);
LABEL_16:
      IOObjectRelease(v18);
      return;
    }

    Value = CFDictionaryGetValue(v27, @"FeatureFlags");
    if (Value && (v37 = Value, v38 = CFGetTypeID(Value), v38 == CFNumberGetTypeID()))
    {
      valuePtr = 0;
      if (CFNumberGetValue(v37, kCFNumberIntType, &valuePtr))
      {
        if ((valuePtr & 4) != 0)
        {
          ramrod_delete_NVRAM_variable(@"apt-carveout-size-mb", 0);
        }

        goto LABEL_15;
      }

      v39 = "Couldn't read a kCFNumberIntType out of the feature flags";
    }

    else
    {
      v39 = "Feature flags were NULL. No need to clear apt carvout";
    }

    ramrod_log_msg(v39, v30, v31, v32, v33, v34, v35, v36, v40);
LABEL_15:
    CFRelease(v27);
    goto LABEL_16;
  }

  ramrod_log_msg("Device had no AppleProcessorTraceNub entry", v11, v12, v13, v14, v15, v16, v17, a9);
}

uint64_t sub_28164(uint64_t a1, posix_spawn_file_actions_t *a2)
{
  if (*(a1 + 32) == 1)
  {
    posix_spawn_file_actions_adddup2(a2, 1, 2);
  }

  return 0;
}

uint64_t sub_2819C(uint64_t a1, int __fd)
{
  v2 = *(a1 + 40);
  if (v2 >= 1)
  {
    v4 = *(a1 + 32);
    while (1)
    {
      v5 = write(__fd, v4, v2);
      if (v5 == -1)
      {
        break;
      }

      v4 += v5;
      v6 = v2 <= v5;
      v2 -= v5;
      if (v6)
      {
        return 0;
      }
    }

    v7 = __error();
    v8 = strerror(*v7);
    ramrod_log_msg("write failed for subprocess: %s\n", v9, v10, v11, v12, v13, v14, v15, v8);
  }

  return 0;
}

void sub_28224(uint64_t a1, void *__src, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v9 = *(*(*(a1 + 32) + 8) + 24);
  if (v9)
  {
    if (v9 >= a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = *(*(*(a1 + 32) + 8) + 24);
    }

    memcpy(*(*(*(a1 + 40) + 8) + 24), __src, v11);
    *(*(*(a1 + 40) + 8) + 24) += v11;
    *(*(*(a1 + 32) + 8) + 24) -= v11;
  }

  ramrod_log_msg("%.*s", __src, a3, a4, a5, a6, a7, a8, v8);
}

uint64_t sub_282C4(int a1, unsigned int a2)
{
  v18[1] = 0;
  v18[2] = 0;
  v18[0] = a2;
  if (ffsctl(a1, 0x80184A24uLL, v18, 0))
  {
    v9 = *__error();
    ramrod_log_msg("%s: Failed waiting for snapshot to delete, errno:%d\n", v10, v11, v12, v13, v14, v15, v16, "ramrod_wait_for_snapshot_deletion");
  }

  else
  {
    ramrod_log_msg("%s: Successfully waited for snapshot deletion\n", v2, v3, v4, v5, v6, v7, v8, "ramrod_wait_for_snapshot_deletion");
    return 0;
  }

  return v9;
}

void sub_28350(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  for (i = 0; i != 3; ++i)
  {
    v11 = sync_volume_np(a1, 3);
    if (v11)
    {
      ramrod_log_msg("Got error(%d) from sync_volume_np data volume call attempt %d", v12, v13, v14, v15, v16, v17, v18, v11);
    }
  }

  ramrod_log_msg("Done calling sync_volume_np on data volume\n", v12, v13, v14, v15, v16, v17, v18, a9);
}

void sub_283F8(id a1)
{
  ramrod_log_msg("entering %s\n", v1, v2, v3, v4, v5, v6, v7, "ramrod_set_updating_text_block_invoke_2");
  v15 = 0;
  if ((ramrod_display_set_aux_image_path(@"/mnt5/updating.png", &v15) & 1) == 0)
  {
    ramrod_log_msg("%s: failed to set aux image to updating image\n", v8, v9, v10, v11, v12, v13, v14, "ramrod_set_updating_text_block_invoke_2");
  }
}

void sub_28488(id a1)
{
  v9 = 0;
  ramrod_log_msg("entering %s\n", v1, v2, v3, v4, v5, v6, v7, "ramrod_clear_updating_text_block_invoke_2");
  pthread_mutex_lock(&stru_1C4780);
  byte_1C6B3C = 1;
  pthread_mutex_unlock(&stru_1C4780);
  sleep(3u);
  ramrod_display_set_aux_image_path(0, &v9);
  progress = ramrod_display_get_progress();
  if (progress != 0.0)
  {
    ramrod_display_set_granular_progress_forced(1, progress);
  }

  pthread_mutex_lock(&stru_1C4780);
  byte_1C6B3C = 0;
  pthread_mutex_unlock(&stru_1C4780);
}

void sub_28524(CFErrorRef *a1@<X0>, const __CFString *a2@<X1>, const __CFString *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, char a7@<W8>)
{

  ramrod_create_error_cf(a1, a2, 6, 0, a3, a4, a5, a6, a7);
}

void sub_28654(uint64_t a1)
{
  step_desc = checkpoint_closure_context_get_step_desc([*(a1 + 32) checkpoint_closure_context]);
  ramrod_log_msg("[AsyncCP][Start] Checkpoint %s start running.\n", v3, v4, v5, v6, v7, v8, v9, *(step_desc + 8));
  v10 = [*(a1 + 32) workQueue];
  dispatch_queue_set_specific(v10, kCheckpointAsyncStepContextKey[0], [*(a1 + 32) checkpoint_closure_context], 0);
  v11 = 0;
  v12 = 1;
  do
  {
    while (1)
    {
      v46 = 0;
      v45 = 0;
      if (v11)
      {
        v13 = [*(a1 + 32) checkpoint_closure_context];
        v12 = checkpoint_closure_context_handle_simulator_actions(v13, 1, &v46, &v45, v14, v15, v16, v17) != 0;
      }

      v18 = *(a1 + 32);
      objc_sync_enter(v18);
      v12 &= [*(a1 + 32) isCanceled] ^ 1;
      objc_sync_exit(v18);
      if (v12)
      {
        checkpoint_closure_context_set_start_time([*(a1 + 32) checkpoint_closure_context]);
        (*(*(a1 + 40) + 16))();
        checkpoint_closure_context_set_end_time([*(a1 + 32) checkpoint_closure_context]);
        v46 = [*(a1 + 32) result];
        v45 = [*(a1 + 32) error];
      }

      v19 = [*(a1 + 32) checkpoint_closure_context];
      if (checkpoint_closure_context_handle_simulator_actions(v19, 0, &v46, &v45, v20, v21, v22, v23))
      {
        v24 = [*(a1 + 32) checkpoint_closure_context];
        v32 = checkpoint_closure_context_handle_simulator_match_name(v24, v25, v26, v27, v28, v29, v30, v31) != 0;
      }

      else
      {
        v32 = 0;
      }

      v33 = *(a1 + 32);
      objc_sync_enter(v33);
      if (([*(a1 + 32) isCanceled] & 1) == 0)
      {
        [*(a1 + 32) setResult:v46];
        [*(a1 + 32) setError:v45];
      }

      if (!v46)
      {
        goto LABEL_14;
      }

      v34 = [*(a1 + 32) isCanceled];
      if (((v34 | v32) & 1) == 0)
      {
        break;
      }

      LOBYTE(v32) = v34 ^ 1;
LABEL_14:
      objc_sync_exit(v33);
      v11 = 1;
      if ((v32 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    should_retry = checkpoint_closure_context_should_retry([*(a1 + 32) checkpoint_closure_context]);
    objc_sync_exit(v33);
    v11 = 1;
  }

  while (should_retry);
LABEL_17:
  v36 = [*(a1 + 32) workQueue];
  dispatch_queue_set_specific(v36, kCheckpointAsyncStepContextKey[0], 0, 0);
  v37 = *(step_desc + 8);
  [*(a1 + 32) result];
  ramrod_log_msg("[AsyncCP][End] Checkpoint %s finished with result: %d.\n", v38, v39, v40, v41, v42, v43, v44, v37);
  if ([*(a1 + 32) result])
  {
    if ([*(a1 + 32) error])
    {
      checkpoint_closure_context_set_encountered_async_error([*(a1 + 32) checkpoint_closure_context], objc_msgSend(*(a1 + 32), "result"), objc_msgSend(*(a1 + 32), "error"));
    }
  }
}

void sub_288CC(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 3);
  v4 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v4, 7);
}

void sub_2891C(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 7);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 3);
}

uint64_t ramrod_send_data_array(int a1, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  v5 = calloc(Count, 0x10uLL);
  v6 = v5;
  if (Count >= 1)
  {
    v7 = 0;
    p_iov_len = &v5->iov_len;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
      *(p_iov_len - 1) = CFDataGetBytePtr(ValueAtIndex);
      *p_iov_len = CFDataGetLength(ValueAtIndex);
      p_iov_len += 2;
      ++v7;
    }

    while (Count != v7);
  }

  v10 = sub_28E48(a1, v6, Count);
  free(v6);
  return v10;
}

uint64_t sub_28E48(int a1, iovec *a2, int a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  p_iov_len = &a2->iov_len;
  v9 = a3;
  while (1)
  {
    do
    {
      v7 += a2[v6++].iov_len;
    }

    while (v6 != v9);
    if (!v7)
    {
      return 0;
    }

    v10 = sub_299F0(a1, a2, a3);
    v11 = p_iov_len;
    v7 = v9;
    if (v10 == -1)
    {
      break;
    }

    do
    {
      v12 = *v11;
      if (*v11 >= v10)
      {
        v13 = v10;
      }

      else
      {
        v13 = *v11;
      }

      *(v11 - 1) += v13;
      *v11 = v12 - v13;
      v10 -= v13;
      v11 += 2;
      --v7;
    }

    while (v7);
    v6 = 0;
  }

  return *__error();
}

uint64_t ramrod_send_bytes(int a1, void *a2, size_t a3)
{
  v4.iov_base = a2;
  v4.iov_len = a3;
  return sub_28E48(a1, &v4, 1);
}

uint64_t sub_28F54(int a1, char *a2, size_t a3, unsigned __int8 a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  v8 = a2;
  while (1)
  {
    v9 = ((v8 == a2) & a4) != 0 ? 64 : 0x100000040;
    v10 = ramrod_socket_recv(a1, v8, v5, v9);
    if (!v10)
    {
      break;
    }

    if (v10 == -1)
    {
      return *__error();
    }

    v8 += v10;
    v5 -= v10;
    if (!v5)
    {
      return 0;
    }
  }

  if (v8 == a2)
  {
    return 96;
  }

  else
  {
    return 94;
  }
}

uint64_t ramrod_send_message(int a1, uint64_t a2)
{
  v17 = 0;
  cf = 0;
  v3 = ramrod_message_plist_create(a2, &v17, &cf);
  if (v3)
  {
    v11 = v3;
    *bytes = bswap32(v17);
    v12 = CFDataCreate(0, bytes, 4);
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    CFArrayAppendValue(Mutable, v12);
    ramrod_message_plist_append(v11, Mutable);
    v14 = ramrod_send_data_array(a1, Mutable);
    CFRelease(Mutable);
    CFRelease(v12);
    CFRelease(v11);
  }

  else
  {
    v31 = xmmword_10ACCC;
    v32 = unk_10ACDC;
    v33 = xmmword_10ACEC;
    v34 = unk_10ACFC;
    v27 = xmmword_10AC8C;
    v28 = unk_10AC9C;
    v29 = xmmword_10ACAC;
    v30 = unk_10ACBC;
    v23 = xmmword_10AC4C;
    v24 = unk_10AC5C;
    v25 = xmmword_10AC6C;
    v26 = unk_10AC7C;
    *bytes = *"unknown error";
    v20 = unk_10AC1C;
    v21 = xmmword_10AC2C;
    v22 = unk_10AC3C;
    if (cf)
    {
      v15 = CFCopyDescription(cf);
      CFStringGetCString(v15, bytes, 256, 0x8000100u);
      CFRelease(v15);
      CFRelease(cf);
    }

    ramrod_message_error("sock %3d: CFPropertyListCreateData: %s", v4, v5, v6, v7, v8, v9, v10, a1);
    return 0xFFFFFFFFLL;
  }

  return v14;
}

CFPropertyListRef ramrod_receive_message(int a1)
{
  memset(length, 0, sizeof(length));
  v2 = sub_28F54(a1, length, 4uLL, 1u);
  if (v2)
  {
    v10 = 0;
    v11 = 0;
    if (v2 != 96)
    {
      ramrod_message_error("sock %3d: unable to read message size: %d", v3, v4, v5, v6, v7, v8, v9, a1);
      v10 = 0;
      v11 = 0;
    }

    goto LABEL_13;
  }

  v12 = bswap32(length[0]);
  length[0] = v12;
  v11 = malloc(v12);
  if (sub_28F54(a1, v11, v12, 0))
  {
    ramrod_message_error("sock %3d: unable to read message: %d", v13, v14, v15, v16, v17, v18, v19, a1);
LABEL_6:
    v10 = 0;
    goto LABEL_13;
  }

  v20 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v11, length[0], kCFAllocatorNull);
  if (!v20)
  {
    ramrod_message_error("sock %3d: unable to convert message to CFData", v21, v22, v23, v24, v25, v26, v27, a1);
    goto LABEL_6;
  }

  v28 = v20;
  v10 = CFPropertyListCreateWithData(kCFAllocatorDefault, v20, 0, 0, &length[1]);
  if (!v10)
  {
    ramrod_message_error("sock %3d: unable to convert message to property list", v29, v30, v31, v32, v33, v34, v35, a1);
  }

  if (*&length[1])
  {
    v36 = CFErrorCopyDescription(*&length[1]);
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    *buffer = 0u;
    v47 = 0u;
    CFStringGetCString(v36, buffer, 256, 0x8000100u);
    ramrod_message_error("sock %3d: CFPropertyListCreateFromXMLData: %s", v37, v38, v39, v40, v41, v42, v43, a1);
    CFRelease(v36);
    CFRelease(*&length[1]);
  }

  CFRelease(v28);
LABEL_13:
  free(v11);
  return v10;
}

uint64_t ramrod_socket_set_idle_timeouts_active(int a1, uint64_t a2)
{
  setsockopt(a1, 6, 16, (a2 + 4), 4u);
  setsockopt(a1, 6, 258, (a2 + 12), 4u);
  setsockopt(a1, 6, 257, (a2 + 8), 4u);
  setsockopt(a1, 6, 533, (a2 + 16), 4u);
  setsockopt(a1, 6, 32, a2, 4u);
  return 0;
}

uint64_t ramrod_socket_set_recv_timeout(int a1, int a2)
{
  v2 = a1;
  v19[0] = a2;
  v19[1] = 0;
  if (setsockopt(a1, 0xFFFF, 4102, v19, 0x10u))
  {
    v10 = __error();
    strerror(*v10);
    ramrod_message_error("sock %3d: could not set SO_RCVTIMEO=%d: %s", v11, v12, v13, v14, v15, v16, v17, v2);
    return 0xFFFFFFFFLL;
  }

  else
  {
    ramrod_message_error("sock %3d: set SO_RCVTIMEO=%d", v3, v4, v5, v6, v7, v8, v9, v2);
    return 0;
  }
}

CFPropertyListRef ramrod_receive_async_response_message(int a1)
{
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0;
  v15 = 0u;
  v13 = 128;
  v1 = accept(a1, &v14, &v13);
  v2 = v1;
  if (v1 < 0)
  {
    v4 = __error();
    ramrod_message_error("failed to accept incoming async response socket with errno: %d", v5, v6, v7, v8, v9, v10, v11, *v4);
    v3 = 0;
    result = 0;
    if (v2 == -1)
    {
      return result;
    }
  }

  else
  {
    ramrod_socket_set_nosigpipe(v1, 1);
    v3 = ramrod_receive_message(v2);
  }

  close(v2);
  return v3;
}

uint64_t ramrod_socket_set_nosigpipe(int a1, int a2)
{
  v2 = a1;
  v12 = a2;
  result = setsockopt(a1, 0xFFFF, 4130, &v12, 4u);
  if (result)
  {
    v4 = __error();
    strerror(*v4);
    ramrod_message_error("sock %3d: could not set SO_NOSIGPIPE=%d: %s", v5, v6, v7, v8, v9, v10, v11, v2);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t ramrod_socket_set_keepalive(int a1, int a2)
{
  v2 = a1;
  v19 = a2;
  if (setsockopt(a1, 0xFFFF, 8, &v19, 4u))
  {
    v10 = __error();
    strerror(*v10);
    ramrod_message_error("sock %3d: could not set SO_KEEPALIVE=%d: %s", v11, v12, v13, v14, v15, v16, v17, v2);
    return 0xFFFFFFFFLL;
  }

  else
  {
    ramrod_message_error("sock %3d: set SO_KEEPALIVE=%d", v3, v4, v5, v6, v7, v8, v9, v2);
    return 0;
  }
}

uint64_t ramrod_socket_set_nopush(int a1, int a2)
{
  v3 = a2;
  setsockopt(a1, 6, 4, &v3, 4u);
  return 0;
}

uint64_t ramrod_socket_set_buffer_limits(int a1, int a2, int a3)
{
  v23 = a2;
  v22 = a3;
  if (a2 >= 1 && setsockopt(a1, 0xFFFF, 4097, &v23, 4u))
  {
    v5 = __error();
    strerror(*v5);
    ramrod_message_error("sock %3d: could not set SO_SNDBUF=%d: %s", v6, v7, v8, v9, v10, v11, v12, a1);
    return 0xFFFFFFFFLL;
  }

  if (a3 >= 1)
  {
    result = setsockopt(a1, 0xFFFF, 4098, &v22, 4u);
    if (!result)
    {
      return result;
    }

    v14 = __error();
    strerror(*v14);
    ramrod_message_error("sock %3d: could not set SO_RCVBUF=%d: %s", v15, v16, v17, v18, v19, v20, v21, a1);
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t ramrod_getsockopt_int(int a1, int a2, int a3, unsigned int a4)
{
  v6 = 4;
  v7 = 0;
  if (getsockopt(a1, a2, a3, &v7, &v6))
  {
    return a4;
  }

  else
  {
    return v7;
  }
}

void ramrod_socket_log_statistics(int a1)
{
  LODWORD(v13) = 0;
  HIDWORD(v20) = 4;
  getsockopt(a1, 0xFFFF, 4097, &v13, &v20 + 1);
  LODWORD(v13) = 0;
  HIDWORD(v20) = 4;
  getsockopt(a1, 0xFFFF, 4098, &v13, &v20 + 1);
  v18 = 0u;
  v19 = 0u;
  v16 = 0uLL;
  v17 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v13 = 0uLL;
  v12 = 112;
  if (getsockopt(a1, 6, 262, &v13, &v12))
  {
    v2 = __error();
    strerror(*v2);
    ramrod_message_error("sock %3d: could not query TCP_CONNECTION_INFO: %s", v3, v4, v5, v6, v7, v8, v9, a1);
  }

  else
  {
    v20 = 4;
    getsockopt(a1, 0xFFFF, 4132, &v20 + 4, &v20);
    v20 = 4;
    getsockopt(a1, 0xFFFF, 4128, &v20 + 4, &v20);
    ramrod_message_error("sock %3d: connection summary\n    state: %s (%hhu) options: %#x flags: %#x\n    bytes in/out: %llu/%llu\n    pkts in/out: %llu/%llu\n    bytes ooo in: %llu\n    bytes rxmit out: %llu\n    buffer sizes in/out: %d/%d\n    pending bytes in/out: %d/%d\n    window in/out: %u/%u\n    mss: %u\n    rtt: %u ms\n    rttvar: %u ms", HIDWORD(v14), v14, DWORD1(v15), HIDWORD(v15), v16, v10, v11, a1);
  }
}

ssize_t ramrod_socket_send(int a1, void *a2, size_t a3)
{
  v4.iov_base = a2;
  v4.iov_len = a3;
  return sub_299F0(a1, &v4, 1);
}

ssize_t sub_299F0(int a1, iovec *a2, int a3)
{
  v6 = 0;
  v7 = a3;
  p_iov_len = &a2->iov_len;
  while (1)
  {
    if (v6)
    {
      usleep(0x186A0u);
    }

    memset(&v23.msg_iovlen + 1, 0, 20);
    *&v23.msg_name = 0u;
    v23.msg_iov = a2;
    v23.msg_iovlen = a3;
    result = sendmsg(a1, &v23, 0);
    if (result != -1)
    {
      break;
    }

    v10 = __error();
    if (a3 >= 1)
    {
      v11 = 0;
      v12 = p_iov_len;
      v13 = v7;
      do
      {
        v14 = *v12;
        v12 += 2;
        v11 += v14;
        --v13;
      }

      while (v13);
    }

    v15 = *v10;
    strerror(*v10);
    ramrod_message_error("sock %3d: send(%lu) failed: %s", v16, v17, v18, v19, v20, v21, v22, a1);
    *__error() = v15;
    if ((v15 == 4 || v15 == 55) && ++v6 != 51)
    {
      continue;
    }

    return -1;
  }

  return result;
}

ssize_t ramrod_socket_recv(int a1, void *a2, size_t a3, uint64_t a4)
{
  v5 = a1;
  v6 = recv(a1, a2, a3, a4 & 0x7FFFFFFF);
  v14 = v6;
  if (v6)
  {
    if (v6 == -1)
    {
      v15 = *__error();
      strerror(v15);
      ramrod_message_error("sock %3d: recv(%lu) failed: %s", v16, v17, v18, v19, v20, v21, v22, v5);
      *__error() = v15;
    }
  }

  else if ((a4 & 0x100000000) != 0)
  {
    ramrod_message_error("sock %3d: recv(%lu) failed: connection closed", v7, v8, v9, v10, v11, v12, v13, v5);
  }

  return v14;
}

uint64_t ramrod_socket_shutdown(char a1, int a2)
{
  if (shutdown(a1, a2))
  {
    v10 = __error();
    strerror(*v10);
    ramrod_message_error("sock %3d: shutdown(%s) failed: %s", v11, v12, v13, v14, v15, v16, v17, a1);
    return 0xFFFFFFFFLL;
  }

  else
  {
    ramrod_message_error("sock %3d: shutdown(%s) complete", v3, v4, v5, v6, v7, v8, v9, a1);
    return 0;
  }
}

uint64_t ramrod_socket_send_eof_and_wait(char a1)
{
  if (ramrod_socket_shutdown(a1, 1))
  {
    return 0xFFFFFFFFLL;
  }

  return ramrod_socket_wait_for_eof();
}

uint64_t ramrod_socket_wait_for_eof()
{
  v0 = off_1AD4A0();
  bzero(v11, 0x1000uLL);
  do
  {
    v1 = recv(v0, v11, 0x1000uLL, 0);
  }

  while (v1 > 0);
  if (v1 != -1)
  {
    return 0;
  }

  v3 = __error();
  strerror(*v3);
  ramrod_message_error("sock %3d: received error waiting for EOF: %s", v4, v5, v6, v7, v8, v9, v10, v0);
  return 0xFFFFFFFFLL;
}

uint64_t ramrod_socket_sockaddr_to_string(char *a1, size_t a2, const sockaddr *a3, uint64_t a4)
{
  sa_family = a3->sa_family;
  if (sa_family != 30 && sa_family != 1 && !a3->sa_family)
  {
    goto LABEL_16;
  }

  bzero(v14, 0x401uLL);
  *v12 = 0u;
  v13 = 0u;
  if (sa_family == 30)
  {
    v9 = 28;
  }

  else
  {
    v9 = 0;
  }

  if (sa_family == 2)
  {
    v9 = 16;
  }

  if (a3->sa_len)
  {
    sa_len = a3->sa_len;
  }

  else
  {
    sa_len = v9;
  }

  if (!getnameinfo(a3, sa_len, v14, 0x401u, v12, 0x20u, 10))
  {
    if (!v12[0] || *v12 == 48)
    {
      v12[0] = 0;
    }

    LODWORD(result) = snprintf(a1, a2, "%s%s%s%s%s");
    return result;
  }

  if (a3->sa_family == 1 && a3->sa_len != 2)
  {
    LODWORD(result) = snprintf(a1, a2, "%s%.*s%s");
  }

  else
  {
LABEL_16:
    if (!a4)
    {
      return -1;
    }

    LODWORD(result) = snprintf(a1, a2, "%s");
  }

  return result;
}

BOOL ramrod_check_NVRAM_access()
{
  v0 = wait_for_io_service_matching_resource_with_timeout("IONVRAM", 0);
  v1 = v0;
  if (v0)
  {
    IOObjectRelease(v0);
  }

  return v1 != 0;
}

uint64_t _ramrod_set_file_var(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  sub_2A03C(@"%@ = %@\n", v5, v6, v7, v8, v9, v10, v11, a1);
  if (a1 && a2)
  {
    v19 = qword_1C6B58;
    if (!qword_1C6B58)
    {
      v19 = [NSMutableDictionary dictionaryWithCapacity:1];
      qword_1C6B58 = v19;
    }

    [(NSMutableDictionary *)v19 setObject:a2 forKey:a1];
    if (qword_1C6B60)
    {
      [qword_1C6B60 removeObject:a1];
    }
  }

  else
  {
    sub_2A03C(@"skipping\n", v12, v13, v14, v15, v16, v17, v18, v21);
  }

  objc_autoreleasePoolPop(v4);
  return 1;
}

void sub_2A03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = objc_autoreleasePoolPush();
  v11 = [objc_msgSend([NSString alloc] initWithFormat:a1 arguments:&a9), "cStringUsingEncoding:", 4];
  ramrod_log_msg("%s", v12, v13, v14, v15, v16, v17, v18, v11);
  objc_autoreleasePoolPop(v10);
}

id _ramrod_copy_file_var(uint64_t a1)
{
  v1 = [qword_1C6B58 objectForKey:a1];

  return v1;
}

uint64_t _ramrod_delete_file_var(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_2A03C(@"%@ = <delete>\n", v3, v4, v5, v6, v7, v8, v9, a1);
  if (qword_1C6B58)
  {
    [qword_1C6B58 removeObjectForKey:a1];
  }

  v10 = qword_1C6B60;
  if (!qword_1C6B60)
  {
    v10 = [NSMutableArray arrayWithCapacity:1];
    qword_1C6B60 = v10;
  }

  if (([(NSMutableArray *)v10 containsObject:a1]& 1) == 0)
  {
    [qword_1C6B60 addObject:a1];
  }

  objc_autoreleasePoolPop(v2);
  return 1;
}

uint64_t ramrod_set_NVRAM_persistent_path(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    sub_2A03C(@"nvram will not be shadowed to the file system\n", a2, a3, a4, a5, a6, a7, a8, v27);
    ramrod_delete_NVRAM_variable(@"ramrod-nvram-sequence", 0);
    ramrod_delete_NVRAM_variable(@"ramrod-nvram-session", 0);
    ramrod_delete_NVRAM_variable(@"ramrod-nvram-shadow-path", 0);
    return 0;
  }

  v28 = 0;
  if (!ramrod_set_NVRAM_shadow(@"ramrod-nvram-shadow-path", a1, a1, &v28, 0, 0))
  {
    if (v28)
    {
      sub_2A03C(@"Error %@ setting nvram shadowing to path %@\n", v9, v10, v11, v12, v13, v14, v15, v28);
    }

    else
    {
      sub_2A03C(@"Uknown error setting nvram shadowing to path %@\n", v9, v10, v11, v12, v13, v14, v15, a1);
    }

    return 0;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = [NSString stringWithFormat:@"%ld", sub_2A304()];
  v25 = ramrod_set_NVRAM_shadow(@"ramrod-nvram-session", v17, v17, &v28, 0, 0);
  if (v25)
  {
    sub_2A03C(@"nvram will be shadowed at the path %@\n", v18, v19, v20, v21, v22, v23, v24, a1);
  }

  else if (v28)
  {
    sub_2A03C(@"Error %@ setting nvram session value to %@ while setting shadow path to %@\n", v18, v19, v20, v21, v22, v23, v24, v28);
  }

  else
  {
    sub_2A03C(@"Uknown error setting nvram session value while setting shadow path to %@\n", v18, v19, v20, v21, v22, v23, v24, a1);
  }

  objc_autoreleasePoolPop(v16);
  return v25;
}

uint64_t sub_2A304()
{
  result = qword_1C6B70;
  if (!qword_1C6B70)
  {
    *v11 = 0x1500000001;
    v9[0] = 0;
    v9[1] = 0;
    v10 = 16;
    if (sysctl(v11, 2u, v9, &v10, 0, 0))
    {
      sub_2A03C(@"Could not determine boot time\n", v1, v2, v3, v4, v5, v6, v7, v8);
      return qword_1C6B70;
    }

    else
    {
      result = v9[0];
      qword_1C6B70 = v9[0];
    }
  }

  return result;
}

uint64_t ramrod_delete_NVRAM_variable(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (qword_1C6B88 != -1)
  {
    sub_D6738();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = sub_2B434;
  block[3] = &unk_1AD8F8;
  block[4] = &v7;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(qword_1C6B80, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void ramrod_dump_NVRAM_file()
{
  v0 = ramrod_copy_NVRAM_variable_from_devicetree(@"ramrod-nvram-shadow-path");
  if (v0)
  {
    v1 = v0;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v2 = [[NSString alloc] initWithData:v1 encoding:4], v1, (v1 = v2) != 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
        {
          v17 = [NSDictionary dictionaryWithContentsOfFile:v1];
          sub_2A03C(@"NVRAM file: %@\n", v10, v11, v12, v13, v14, v15, v16, v17);
        }

        else
        {
          sub_2A03C(@"no NVRAM file: %@\n", v3, v4, v5, v6, v7, v8, v9, v1);
        }
      }
    }
  }
}

unint64_t ramrod_fullsync_on_NVRAM_file()
{
  v0 = objc_autoreleasePoolPush();
  v1 = ramrod_copy_NVRAM_variable_from_devicetree(@"ramrod-nvram-shadow-path");
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [[NSString alloc] initWithData:v2 encoding:4];
    }

    if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
    {
      v2 = fcntl([[NSFileHandle fileHandleForUpdatingAtPath:?]], 51) == 0;
    }

    else
    {
      v2 = 0;
    }
  }

  objc_autoreleasePoolPop(v0);
  return v2;
}

uint64_t ramrod_persist_NVRAM_to_filesystem()
{
  v0 = objc_autoreleasePoolPush();
  v1 = ramrod_copy_NVRAM_variable_from_devicetree(@"ramrod-nvram-session");
  if (!v1)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [[NSString alloc] initWithData:v1 encoding:4];

    v1 = v2;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_13:
    v4 = 0;
    goto LABEL_14;
  }

  v3 = strtol([v1 UTF8String], 0, 0);
  if (v3 != sub_2A304())
  {
    objc_autoreleasePoolPop(v0);
    v17 = 0;
    if (!v1)
    {
      return v17;
    }

    goto LABEL_18;
  }

  v4 = ramrod_copy_NVRAM_variable_from_devicetree(@"ramrod-nvram-shadow-path");
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = ramrod_copy_NVRAM_variable_from_devicetree(@"ramrod-nvram-sequence");
  if (!v5)
  {
    v16 = 1;
    goto LABEL_27;
  }

  v6 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [[NSString alloc] initWithData:v6 encoding:4];

    v6 = v7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v93 = objc_opt_class();
    sub_2A03C(@"%@ has an unsupported type: %@\n", v19, v20, v21, v22, v23, v24, v25, @"ramrod-nvram-sequence");
LABEL_25:
    v16 = 1;
    goto LABEL_26;
  }

  v8 = [v6 UTF8String];
  if (!v8)
  {
    sub_2A03C(@"epochCStrPtr == NULL\n", v9, v10, v11, v12, v13, v14, v15, v91);
    goto LABEL_25;
  }

  v16 = strtol(v8, 0, 0) + 1;
LABEL_26:

LABEL_27:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = [[NSString alloc] initWithData:v4 encoding:4];

    v4 = v26;
  }

  if ((byte_1C6B68 & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
      {
        sub_2A03C(@"Using file at: %@\n", v27, v28, v29, v30, v31, v32, v33, v4);
        v34 = [NSDictionary dictionaryWithContentsOfFile:v4];
        if (v34)
        {
          v42 = v34;
          v43 = [(NSDictionary *)v34 description];
          if ([(NSString *)v43 length]>= 0x801)
          {
            v43 = [NSString stringWithFormat:@"Truncated NVRAM: %@", [(NSString *)v43 substringToIndex:2048]];
          }

          sub_2A03C(@"Loaded persistent file: %@\n", v44, v45, v46, v47, v48, v49, v50, v43);
          sub_2A03C(@"Pending file-vars: %@\n", v51, v52, v53, v54, v55, v56, v57, qword_1C6B58);
          sub_2A03C(@"Pending var deletes: %@\n", v58, v59, v60, v61, v62, v63, v64, qword_1C6B60);
          v65 = [(NSDictionary *)v42 valueForKey:@"ramrod-file-only-vars"];
          if (v65)
          {
            v66 = v65;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v67 = [v66 mutableCopy];
              v68 = v67;
              if (qword_1C6B58)
              {
                [v67 addEntriesFromDictionary:?];
              }

              v28 = qword_1C6B60;
              if (qword_1C6B60)
              {
                [v68 removeObjectsForKeys:?];
              }

              qword_1C6B58 = v68;
            }
          }
        }

        else
        {
          sub_2A03C(@"Error loading persistent var file: %@\n", v35, v36, v37, v38, v39, v40, v41, v4);
        }

        byte_1C6B68 = 1;
        if (qword_1C6B60)
        {

          qword_1C6B60 = 0;
        }

        v91 = qword_1C6B58;
        v76 = @"Final vars: %@\n";
      }

      else
      {
        v76 = @"no NVRAM file\n";
      }

      sub_2A03C(v76, v27, v28, v29, v30, v31, v32, v33, v91);
      goto LABEL_49;
    }

    objc_opt_class();
    sub_2A03C(@"%@ has an unsupported type: %@\n", v69, v70, v71, v72, v73, v74, v75, @"ramrod-nvram-shadow-path");
LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

LABEL_49:
  v95 = 0;
  ramrod_set_NVRAM_variable_sync_no_shadow(@"ramrod-nvram-sequence", [NSString stringWithFormat:@"%ld", v16, v93], &v95, 0);
  v77 = v95;
  properties = 0;
  v78 = sub_2AEEC();
  v79 = IORegistryEntryCreateCFProperties(v78, &properties, 0, 0);
  if (v79)
  {
    v92 = v79;
    v87 = @"Error %x creating IORegistryEntry CFProperties\n";
LABEL_51:
    sub_2A03C(v87, v80, v81, v82, v83, v84, v85, v86, v92);
    goto LABEL_14;
  }

  v88 = properties;
  properties = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v89 = [NSMutableDictionary dictionaryWithDictionary:v88];
    [(NSMutableDictionary *)v89 setObject:v88 forKey:@"ramrod-nvram-shadow-vars"];
    if (qword_1C6B58)
    {
      [(NSMutableDictionary *)v89 addEntriesFromDictionary:?];
      [(NSMutableDictionary *)v89 setObject:qword_1C6B58 forKey:@"ramrod-file-only-vars"];
    }

    if (![(NSMutableDictionary *)v89 writeToFile:v4 atomically:1])
    {
      v87 = @"Failed to persist contents of nvram to the filesystem. File system may not be available\n";
      goto LABEL_51;
    }

    if ((byte_1C6B68 & 1) == 0)
    {
      sub_2A03C(@"first sync - no file\n", v80, v81, v82, v83, v84, v85, v86, v92);
      byte_1C6B68 = 1;
      if (qword_1C6B60)
      {

        qword_1C6B60 = 0;
      }
    }

    v90 = @"nvram successfully persisted to the filesystem\n";
  }

  else
  {
    v92 = @"ramrod-nvram-shadow-path";
    objc_opt_class();
    v90 = @"%@ has an unsupported type: %@\n";
  }

  sub_2A03C(v90, v80, v81, v82, v83, v84, v85, v86, v92);
  v17 = 1;
LABEL_15:
  objc_autoreleasePoolPop(v0);
  if (v4)
  {
  }

  if (v1)
  {
LABEL_18:
  }

  return v17;
}

BOOL ramrod_set_NVRAM_variable_sync_no_shadow(uint64_t a1, uint64_t a2, CFErrorRef *a3, int a4)
{
  if (sub_2B024(a3))
  {
    return 0;
  }

  v8 = 4;
  if (!a1 || !a2)
  {
LABEL_32:
    mach_error_string(v8);
    ramrod_create_error_cf(a3, kCFErrorDomainMach, v8, 0, @"%s: failed to set nvram '%@=%@': %#x (%s)", v26, v27, v28, "ramrod_set_NVRAM_variable_sync_no_shadow");
    return 0;
  }

  v9 = CFStringCreateWithFormat(0, 0, @"%@", a1);
  v10 = CFStringCreateWithFormat(0, 0, @"%@", a2);
  v32[0] = CFDataGetTypeID();
  v32[1] = CFStringGetTypeID();
  v32[2] = CFNumberGetTypeID();
  v32[3] = CFBooleanGetTypeID();
  v11 = sub_2AEEC();
  v12 = 0;
  v8 = -536870206;
  while (1)
  {
    v13 = v32[v12];
    v14 = CFGetTypeID(v10);
    if (v14 == v13)
    {
      v15 = v10;
LABEL_7:
      Copy = CFRetain(v15);
LABEL_8:
      v17 = Copy;
      goto LABEL_9;
    }

    if (v14 == CFStringGetTypeID())
    {
      break;
    }

LABEL_28:
    if (++v12 == 4)
    {
      goto LABEL_31;
    }
  }

  if (CFStringGetTypeID() == v13)
  {
    Copy = CFStringCreateCopy(0, v10);
    goto LABEL_8;
  }

  if (CFDataGetTypeID() == v13)
  {
    v15 = [(__CFString *)v10 dataUsingEncoding:4];
    if (v15)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

  if (CFBooleanGetTypeID() != v13)
  {
    if (CFNumberGetTypeID() != v13)
    {
      goto LABEL_28;
    }

    v35 = 0u;
    v36 = 0u;
    *buffer = 0u;
    v34 = 0u;
    if (!CFStringGetCString(v10, buffer, 64, 0x8000100u))
    {
      goto LABEL_28;
    }

    __endptr = 0;
    v18 = strtol(buffer, &__endptr, 0);
    if (__endptr == buffer || *__endptr)
    {
      goto LABEL_28;
    }

    valuePtr = v18;
    Copy = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    goto LABEL_8;
  }

  v17 = kCFBooleanTrue;
  if (!CFEqual(v10, @"true"))
  {
    v17 = kCFBooleanFalse;
    if (!CFEqual(v10, @"false"))
    {
      goto LABEL_28;
    }
  }

LABEL_9:
  if (!v17)
  {
    goto LABEL_28;
  }

  v8 = IORegistryEntrySetCFProperty(v11, v9, v17);
  CFRelease(v17);
  if (v8 != -536870211 && v8 != -536870181 && v8)
  {
    goto LABEL_28;
  }

LABEL_31:
  CFRelease(v10);
  CFRelease(v9);
  if (v8)
  {
    goto LABEL_32;
  }

  if (!a4)
  {
    return 1;
  }

  result = ramrod_sync_NVRAM(a3, v19, v20, v21, v22, v23, v24, v25);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_2AEEC()
{
  result = atomic_load(&dword_1C6B78);
  if (!result)
  {
    result = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/options");
    if (result)
    {
      v1 = 0;
      atomic_compare_exchange_strong(&dword_1C6B78, &v1, result);
      if (v1)
      {
        IOObjectRelease(result);
        return v1;
      }
    }
  }

  return result;
}

BOOL ramrod_print_NVRAM_variables(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  properties = 0;
  ramrod_log_msg("%s\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_print_NVRAM_variables");
  if (sub_2B024(0))
  {
    return 0;
  }

  v10 = sub_2AEEC();
  v8 = IORegistryEntryCreateCFProperties(v10, &properties, 0, 0) == 0;
  if (properties)
  {
    Data = CFPropertyListCreateData(0, properties, kCFPropertyListXMLFormat_v1_0, 0, 0);
    if (Data)
    {
      v12 = Data;
      Length = CFDataGetLength(Data);
      CFDataGetBytePtr(v12);
      ramrod_log_msg("NVRAM variables:\n%.*s\n", v14, v15, v16, v17, v18, v19, v20, Length);
      CFRelease(v12);
    }

    if (properties)
    {
      CFRelease(properties);
    }
  }

  return v8;
}

uint64_t sub_2B024(CFErrorRef *a1)
{
  pthread_mutex_lock(&stru_1C47C0);
  if (dword_1C6B7C == 1)
  {
    goto LABEL_5;
  }

  if (dword_1C6B7C == 2)
  {
LABEL_7:
    pthread_mutex_unlock(&stru_1C47C0);
    v3 = 4;
    ramrod_create_error_cf(a1, @"RamrodErrorDomain", 4, 0, @"%s: timeout waiting for nvram service", v4, v5, v6, "ramrod_wait_for_nvram");
    return v3;
  }

  v2 = wait_for_io_service_matching_resource_with_timeout("IONVRAM", 0x3Cu);
  if (!v2)
  {
    dword_1C6B7C = 2;
    goto LABEL_7;
  }

  IOObjectRelease(v2);
  dword_1C6B7C = 1;
LABEL_5:
  pthread_mutex_unlock(&stru_1C47C0);
  return 0;
}

BOOL ramrod_sync_NVRAM(CFErrorRef *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("%s\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_sync_NVRAM");
  v9 = sub_2AEEC();
  v10 = IORegistryEntrySetCFProperty(v9, @"IONVRAM-FORCESYNCNOW-PROPERTY", @"IONVRAM-FORCESYNCNOW-PROPERTY");
  v11 = v10;
  if (v10)
  {
    mach_error_string(v10);
    ramrod_create_error_cf(a1, kCFErrorDomainMach, v11, 0, @"%s: failed to sync NVRAM: %#x (%s)", v12, v13, v14, "ramrod_sync_NVRAM");
  }

  return v11 == 0;
}

uint64_t ramrod_set_NVRAM_shadow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (qword_1C6B88 != -1)
  {
    sub_D6738();
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3254779904;
  v14[2] = sub_2B388;
  v14[3] = &unk_1AD8C8;
  v15 = a5;
  v16 = a6;
  v14[4] = &v17;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v14[8] = a4;
  dispatch_sync(qword_1C6B80, v14);
  v12 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  return v12;
}

uint64_t ramrod_set_NVRAM_shadow_limit(uint64_t a1, CFStringRef theString, uint64_t a3, char a4, char a5, CFIndex a6)
{
  if (a6 < 1 || CFStringGetLength(theString) <= a6)
  {

    return ramrod_set_NVRAM_shadow(a1, theString, 0, a3, a4, a5);
  }

  else
  {
    v16.location = 0;
    v16.length = a6;
    v12 = CFStringCreateWithSubstring(kCFAllocatorDefault, theString, v16);
    v13 = ramrod_set_NVRAM_shadow(a1, theString, v12, a3, a4, a5);
    if (v12)
    {
      CFRelease(v12);
    }

    return v13;
  }
}

uint64_t sub_2B388(uint64_t a1)
{
  _ramrod_set_file_var(*(a1 + 40), *(a1 + 48));
  if (*(a1 + 72) == 1)
  {
    ramrod_fullsync_on_NVRAM_file();
  }

  if (*(a1 + 73) == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  else
  {
    Copy = CFStringCreateCopy(0, *(a1 + 40));
    v3 = Copy;
    v4 = *(a1 + 56);
    if (!v4)
    {
      v4 = *(a1 + 48);
    }

    *(*(*(a1 + 32) + 8) + 24) = ramrod_set_NVRAM_variable_sync_no_shadow(Copy, v4, *(a1 + 64), *(a1 + 72));
    CFRelease(v3);
  }

  return ramrod_persist_NVRAM_to_filesystem();
}

uint64_t sub_2B434(uint64_t a1)
{
  Copy = CFStringCreateCopy(0, *(a1 + 40));
  v3 = *(a1 + 48);
  if (!sub_2B024(v3))
  {
    if (Copy)
    {
      v4 = sub_2AEEC();
      v5 = IORegistryEntrySetCFProperty(v4, @"IONVRAM-DELETE-PROPERTY", Copy);
      if (!v5)
      {
        v6 = 1;
        goto LABEL_8;
      }
    }

    else
    {
      v5 = 4;
    }

    mach_error_string(v5);
    ramrod_create_error_cf(v3, kCFErrorDomainMach, v5, 0, @"%s: failed to delete nvram '%@': %#x (%s)", v7, v8, v9, "ramrod_delete_NVRAM_variable_no_shadow");
  }

  v6 = 0;
LABEL_8:
  *(*(*(a1 + 32) + 8) + 24) = v6;
  _ramrod_delete_file_var(Copy);
  CFRelease(Copy);

  return ramrod_persist_NVRAM_to_filesystem();
}

CFTypeRef ramrod_copy_NVRAM_variable_from_devicetree(CFStringRef theString)
{
  Copy = CFStringCreateCopy(0, theString);
  v2 = sub_2AEEC();
  CFProperty = IORegistryEntryCreateCFProperty(v2, Copy, 0, 0);
  CFRelease(Copy);
  return CFProperty;
}

CFTypeRef ramrod_copy_NVRAM_shadow_variable(const __CFString *a1)
{
  result = [qword_1C6B58 objectForKey:a1];
  if (!result)
  {

    return ramrod_copy_NVRAM_variable_from_devicetree(a1);
  }

  return result;
}

uint64_t ramrod_clear_NVRAM_variables(CFErrorRef *a1)
{
  if (!sub_2B024(a1))
  {
    v2 = sub_2AEEC();
    if (v2)
    {
      v6 = v2;
      if (IOObjectConformsTo(v2, "AppleEFINVRAM"))
      {
        v14 = "EFINvram machine. Skiping clearing nvram variables.\n";
LABEL_5:
        ramrod_log_msg(v14, v7, v8, v9, v10, v11, v12, v13, v21);
        return 1;
      }

      v16 = IORegistryEntrySetCFProperty(v6, @"40A0DDD2-77F8-4392-B4A3-1E7304206516:ResetNVRam", @"40A0DDD2-77F8-4392-B4A3-1E7304206516:ResetNVRam");
      if (!v16)
      {
        v14 = "Clearing nvram with IORegistryEntrySetCFProperty succeeded.\n";
        goto LABEL_5;
      }

      v17 = v16;
      ramrod_log_msg("Failed to clear nvram with kernel_error %d\n", v7, v8, v9, v10, v11, v12, v13, v16);
      ramrod_create_error_cf(a1, kCFErrorDomainMach, v17, 0, @"%s: Couldn't set ResetNVRam key to wipe nvram", v18, v19, v20, "ramrod_clear_NVRAM_variables");
    }

    else
    {
      ramrod_create_error_cf(a1, kCFErrorDomainMach, -536870208, 0, @"%s: unable to get registry entry for IODeviceTree:/options", v3, v4, v5, "ramrod_clear_NVRAM_variables");
    }
  }

  return 0;
}

void ramrod_load_nonce_slots(uint64_t a1, uint64_t a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_2B784;
  v2[3] = &unk_1A97E0;
  v2[4] = a1;
  v2[5] = a2;
  if (qword_1C6B90 != -1)
  {
    dispatch_once(&qword_1C6B90, v2);
  }
}

uint64_t ramrod_force_load_nonce_slots(uint64_t a1, uint64_t a2)
{
  result = _ramrod_device_has_sandcat();
  if (result)
  {
    v5 = (*(a1 + 48))(a2);
    sub_351A4(v5, &dword_1C4800, v6, v7, v8, v9, v10, v11);
    AMSupportSafeRelease();
    v12 = (*(a1 + 16))(a2);
    ramrod_log_msg("Entering: %s\n", v13, v14, v15, v16, v17, v18, v19, "Boolean _ramrod_load_ap_nonce_slot_from_data(CFDataRef, int *)");
    if (v12)
    {
      sub_42F44(v12, @"anid", &dword_1C6BA0);
    }

    else
    {
      ramrod_log_msg("WARNING: sep_data == NULL in %s. Will return default.\n", v20, v21, v22, v23, v24, v25, v26, "Boolean _ramrod_load_ap_nonce_slot_from_data(CFDataRef, int *)");
    }

    return AMSupportSafeRelease();
  }

  return result;
}

void ramrod_set_overridden_sfr_manifest_hash_with_string(const __CFString *a1)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (!CStringPtr || (v3 = strdup(CStringPtr)) == 0)
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    if (CFStringGetCString(a1, v4, 97, 0x8000100u))
    {
      v3 = strdup(v4);
    }

    else
    {
      v3 = 0;
    }
  }

  free(qword_1C6B98);
  qword_1C6B98 = v3;
}

void ramrod_set_overridden_sfr_manifest_hash_with_data(const __CFData *a1)
{
  free(qword_1C6B98);
  qword_1C6B98 = 0;
  CFDataGetBytePtr(a1);
  CFDataGetLength(a1);
  if (AMSupportCommonCopyHexStringFromData())
  {
    ramrod_log_msg("Failed to decode sfr hash.\n", v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

BOOL ramrod_commit_dual_iboot_spi_partition(int a1)
{
  v2 = wait_for_io_service_matching_class_with_timeout("AppleEmbeddedSimpleSPINORFlasherDriver", 0xFu);
  if (v2)
  {
    v10 = v2;
    v11 = [[IODualSPIWriter alloc] initWithService:v2];
    if ([(IOServiceWriter *)v11 isAvailable])
    {
      v12 = [(IODualSPIWriter *)v11 commitHeaderAtIndex:a1 withError:0]== 0;
    }

    else
    {
      v12 = 0;
    }

    IOObjectRelease(v10);
  }

  else
  {
    ramrod_log_msg("%s: no SPI flasher driver\n", v3, v4, v5, v6, v7, v8, v9, "ramrod_commit_dual_iboot_spi_partition");
    return 0;
  }

  return v12;
}

uint64_t ramrod_find_prepared_dual_iboot_spi_partition()
{
  v0 = wait_for_io_service_matching_class_with_timeout("AppleEmbeddedSimpleSPINORFlasherDriver", 0xFu);
  if (v0)
  {
    v8 = v0;
    v9 = [[IODualSPIWriter alloc] initWithService:v0];
    if ([(IOServiceWriter *)v9 isAvailable])
    {
      v10 = [(IODualSPIWriter *)v9 findPreparedHeader];
    }

    else
    {
      v10 = 0xFFFFFFFFLL;
    }

    IOObjectRelease(v8);
  }

  else
  {
    ramrod_log_msg("%s: no SPI flasher driver\n", v1, v2, v3, v4, v5, v6, v7, "ramrod_find_prepared_dual_iboot_spi_partition");
    v9 = 0;
    v10 = 0xFFFFFFFFLL;
  }

  return v10;
}

uint64_t ramrod_create_directory_with_class(_BYTE *a1, mode_t a2, uid_t a3, gid_t a4, int a5, int a6)
{
  if (!a1 || *a1 != 47)
  {
    return 22;
  }

  bzero(v70, 0x400uLL);
  __strlcpy_chk();
  for (i = v70; ; *i = 47)
  {
    v12 = strchr(i + 1, 47);
    i = v12;
    if (v12)
    {
      *v12 = 0;
    }

    memset(&v69, 0, sizeof(v69));
    if (lstat(v70, &v69))
    {
      if (*__error() != 2)
      {
        v20 = *__error();
        v21 = __error();
        strerror(*v21);
        ramrod_log_msg("lstat %s failed: %s\n", v22, v23, v24, v25, v26, v27, v28, v70);
        return v20;
      }

      if (a6)
      {
        ramrod_log_msg("creating directory (owner=%d group=%d mode=%o, class=%d) %s\n", v13, v14, v15, v16, v17, v18, v19, a3);
      }

      if (mkdir(v70, a2 & 0x1FF))
      {
        v20 = *__error();
        v29 = __error();
        v62 = strerror(*v29);
        ramrod_log_msg("mkdir failed: %s\n", v30, v31, v32, v33, v34, v35, v36, v62);
        return v20;
      }

      if (chmod(v70, a2))
      {
        v20 = *__error();
        v37 = __error();
        v63 = strerror(*v37);
        ramrod_log_msg("chmod failed: %s\n", v38, v39, v40, v41, v42, v43, v44, v63);
        return v20;
      }

      if (chown(v70, a3, a4))
      {
        v20 = *__error();
        v45 = __error();
        v64 = strerror(*v45);
        ramrod_log_msg("chown failed: %s\n", v46, v47, v48, v49, v50, v51, v52, v64);
        return v20;
      }

      if ((a5 & 0x80000000) == 0)
      {
        v68 = 0;
        v67 = xmmword_10AD6C;
        v66 = a5;
        if (setattrlist(v70, &v67, &v66, 4uLL, 0))
        {
          break;
        }
      }
    }

    if (!i)
    {
      return 0;
    }
  }

  v20 = *__error();
  v53 = __error();
  v65 = strerror(*v53);
  ramrod_log_msg("setattrlist failed: %s\n", v54, v55, v56, v57, v58, v59, v60, v65);
  return v20;
}

uint64_t ramrod_write_data_to_file_with_class(const __CFData *a1, char *a2, int a3)
{
  v5 = open_dprotected_np(a2, 1537, a3, 0, 420);
  if (v5 < 0)
  {
    v14 = __error();
    strerror(*v14);
    ramrod_log_msg("failed to open %s for writing (%s)\n", v15, v16, v17, v18, v19, v20, v21, a2);
  }

  else
  {
    v6 = v5;
    Length = CFDataGetLength(a1);
    v8 = CFDataGetLength(a1);
    BytePtr = CFDataGetBytePtr(a1);
    if (Length < 1)
    {
LABEL_6:
      close(v6);
      return 0;
    }

    v10 = BytePtr;
    v11 = 0;
    while (1)
    {
      v12 = write(v6, v10, v8);
      if (v12 <= 0)
      {
        break;
      }

      v10 += v12;
      v8 -= v12;
      v11 += v12;
      if (Length <= v11)
      {
        goto LABEL_6;
      }
    }

    v22 = __error();
    strerror(*v22);
    ramrod_log_msg("failed writing %s: %s\n", v23, v24, v25, v26, v27, v28, v29, a2);
    close(v6);
    unlink(a2);
  }

  return 0xFFFFFFFFLL;
}

uint64_t ramrod_sync_apfs_metrics_nvram_checkpoint(uint64_t a1, const char *a2, uint64_t a3, int a4)
{
  __linecapp = 0;
  __linep = 0;
  cf = 0;
  v8 = calloc(8uLL, a4);
  v15 = fopen(a2, "r");
  if (!v15)
  {
    v48 = sub_2C3AC(0, "Could not read file %s", v9, v10, v11, v12, v13, v14, a2);
    v49 = 0;
    v19 = 0;
    v50 = 0;
    if (a1)
    {
      goto LABEL_45;
    }

    goto LABEL_47;
  }

  if (getline(&__linep, &__linecapp, v15) == -1)
  {
    v48 = 0;
    v50 = 0;
    v19 = 0;
    v49 = 1;
    goto LABEL_49;
  }

  v79 = a1;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  do
  {
    v20 = __linep;
    v21 = strchr(__linep, 10);
    if (!v21)
    {
      v48 = sub_2C3AC(0, "%d: no newline character detected while reading %s", v22, v23, v24, v25, v26, v27, v16);
      v50 = 0;
      v49 = 0;
      goto LABEL_40;
    }

    if (v21 == v20 || *v21 != 10)
    {
      goto LABEL_13;
    }

    if (v18 < a4)
    {
      *buffer = 0u;
      v84 = 0u;
      *v21 = 0;
      asprintf(&v8[v18], "%s", __linep);
      if (!v8[v18])
      {
        v48 = sub_2C3AC(0, "%d: failed to store log line[%d]", v29, v30, v31, v32, v33, v34, v16);
        v50 = 0;
        goto LABEL_39;
      }

      CFStringGetCString(*(a3 + 8 * v18), buffer, 32, 0x8000100u);
      v19 = sub_2C3AC(v19, "%s:%s", v35, v36, v37, v38, v39, v40, buffer);
      ++v18;
      v20 = __linep;
LABEL_13:
      if (!v20)
      {
        goto LABEL_15;
      }

LABEL_14:
      free(v20);
      __linep = 0;
      goto LABEL_15;
    }

    ++v17;
    if (v20)
    {
      goto LABEL_14;
    }

LABEL_15:
    ++v16;
  }

  while (getline(&__linep, &__linecapp, v15) != -1);
  if (v18 < 1)
  {
    v50 = 0;
    v48 = 0;
    v49 = 1;
    goto LABEL_40;
  }

  v51 = 0;
  while (1)
  {
    v41 = v8[v51];
    if (!v41)
    {
LABEL_29:
      v50 = 0;
      v48 = 0;
      v49 = 1;
      goto LABEL_40;
    }

    v50 = CFStringCreateWithCString(kCFAllocatorDefault, v41, 0x8000100u);
    if (!v50)
    {
      v48 = sub_2C3AC(0, "failed to create CFString for log line[%d]", v52, v53, v54, v55, v56, v57, v51);
      v49 = 0;
      goto LABEL_40;
    }

    if ((ramrod_set_NVRAM_variable_sync(*(a3 + 8 * v51), v50, &cf, v18 - 1 == v51) & 1) == 0)
    {
      break;
    }

    ++v51;
    CFRelease(v50);
    if (v18 == v51)
    {
      goto LABEL_29;
    }
  }

  if (!cf)
  {
    goto LABEL_38;
  }

  v64 = CFErrorCopyUserInfo(cf);
  if (!v64)
  {
    goto LABEL_38;
  }

  v65 = v64;
  Value = CFDictionaryGetValue(v64, kCFErrorLocalizedFailureReasonKey);
  if (!Value)
  {
    CFRelease(v65);
LABEL_38:
    v48 = sub_2C3AC(0, "failed NVRAM write of conversion log line[%d]", v58, v59, v60, v61, v62, v63, v51);
    goto LABEL_39;
  }

  v67 = Value;
  bzero(buffer, 0x800uLL);
  CFStringGetCString(v67, buffer, 2048, 0x8000100u);
  v48 = sub_2C3AC(0, "failed NVRAM write(%s) of conversion log line[%d]", v68, v69, v70, v71, v72, v73, buffer);
  CFRelease(v65);
  CFRelease(v67);
LABEL_39:
  v49 = 0;
LABEL_40:
  if (v17 >= 1)
  {
    v48 = sub_2C3AC(v48, "%d log lines dropped from %s", v42, v43, v44, v45, v46, v47, v17);
  }

  a1 = v79;
  if (!v79)
  {
LABEL_47:
    if (v48)
    {
      ramrod_log_msg("WARNING: %s\n", v41, v42, v43, v44, v45, v46, v47, v48);
    }

    goto LABEL_49;
  }

  if (v19)
  {
    checkpoint_closure_info(v79, "%s", v42, v43, v44, v45, v46, v47, v19);
  }

LABEL_45:
  if (v48)
  {
    checkpoint_closure_warning(a1, "%s", v42, v43, v44, v45, v46, v47, v48);
  }

LABEL_49:
  if (__linep)
  {
    free(__linep);
    __linep = 0;
  }

  if (v19)
  {
    free(v19);
  }

  if (v48)
  {
    free(v48);
  }

  if (a4 < 1)
  {
    v76 = v8;
    if (v8)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v74 = v8;
    v75 = a4;
    v76 = v74;
    v77 = v74;
    do
    {
      if (*v77)
      {
        free(*v77);
        *v77 = 0;
      }

      ++v77;
      --v75;
    }

    while (v75);
LABEL_62:
    free(v76);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v15)
  {
    fclose(v15);
  }

  return v49;
}

char *sub_2C3AC(char *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = 0;
  v12[0] = 0;
  v12[1] = &a9;
  vasprintf(v12, a2, &a9);
  if (!v12[0])
  {
    return a1;
  }

  if (!a1)
  {
    return v12[0];
  }

  asprintf(&v11, "%s;%s", a1, v12[0]);
  if (v11)
  {
    free(a1);
  }

  else
  {
    v11 = a1;
  }

  if (v12[0])
  {
    free(v12[0]);
    v12[0] = 0;
  }

  return v11;
}

uint64_t ramrod_sync_apfs_metrics_nvram()
{
  v7 = ramrod_sync_apfs_metrics_nvram_checkpoint(0, "/mnt5/fsck_logs", &off_1A9800, 1);
  if (v7)
  {
    ramrod_log_msg("%s : failed to sync fsck metrics\n", v0, v1, v2, v3, v4, v5, v6, "ramrod_sync_apfs_metrics_nvram");
  }

  return v7;
}

const __CFDictionary *ramrod_should_update_stockholm(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    ramrod_log_msg("Skipping checking stockholm for booted update\n", a2, a3, a4, a5, a6, a7, a8, vars0);
    return 0;
  }

  else
  {

    return ramrod_device_has_stockholm();
  }
}

uint64_t ramrod_bootstrap_stockholm(uint64_t a1, uint64_t a2, uint64_t a3, CFErrorRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("entering ramrod_bootstrap_stockholm\n", a2, a3, a4, a5, a6, a7, a8, v13);
  if (a4)
  {
    *a4 = 0;
  }

  v14[0] = @"Preboot Root";
  v14[1] = @"Stockholm Skip JCOP";
  v15[0] = a1;
  v15[1] = [NSNumber numberWithBool:1];
  return sub_2C5E4([NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2], a2, a3, a4);
}

uint64_t sub_2C5E4(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  if (CFDictionaryGetValue(a1, @"Perform stockholm install") == kCFBooleanFalse)
  {
    goto LABEL_64;
  }

  ramrod_log_msg("entering update_stockholm\n", v8, v9, v10, v11, v12, v13, v14, v85);
  (*(a2 + 8))(4, 0, a3);
  v15 = IOServiceMatching("AppleStockholmControl");
  if (!v15)
  {
    goto LABEL_64;
  }

  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v15);
  if (!MatchingService)
  {
    goto LABEL_64;
  }

  IOObjectRelease(MatchingService);
  memset(&v88, 0, sizeof(v88));
  cf = 0;
  v17 = dlopen("/usr/lib/libnfrestore.dylib", 261);
  if (!v17)
  {
    sub_D7E94();
LABEL_64:
    (*(a2 + 8))(4, 100, a3);
    return 1;
  }

  v18 = dlsym(v17, "NfRestoreReturnError");
  if (!v18)
  {
    v83 = "could not find NfRestore call\n";
LABEL_63:
    ramrod_log_msg(v83, v19, v20, v21, v22, v23, v24, v25, v86);
    goto LABEL_64;
  }

  v26 = v18;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    v83 = "failed to create params dictionary\n";
    goto LABEL_63;
  }

  v28 = Mutable;
  if (stat("/usr/standalone/firmware/nfrestore/firmware/", &v88))
  {
    ramrod_log_msg("Could not find stockholm firmware directory\n", v29, v30, v31, v32, v33, v34, v35, v86);
    goto LABEL_56;
  }

  CFDictionarySetValue(v28, @"RootFilePath", @"/usr/standalone/firmware/nfrestore/firmware/");
  Value = CFDictionaryGetValue(a1, @"Preboot Root");
  if (!Value)
  {
    bzero(valuePtr, 0x400uLL);
    system_partition_device_node = ramrod_get_system_partition_device_node(valuePtr, 0x400uLL);
    if (system_partition_device_node)
    {
      v37 = ramrod_copy_preboot_path(system_partition_device_node, "/mnt9", 0, 0, v42, v43, v44, v45);
      if (v37)
      {
        goto LABEL_12;
      }
    }

    sub_D7E58(a4, v39, v40, v41, v42, v43, v44, v45);
LABEL_56:
    v37 = 0;
    goto LABEL_57;
  }

  v37 = Value;
  CFRetain(Value);
LABEL_12:
  CFDictionarySetValue(v28, @"RestoreSystemPartition", v37);
  if (a1)
  {
    v46 = CFDictionaryGetValue(a1, @"Stockholm Factory Install");
    if (v46)
    {
      v47 = v46;
      v48 = CFGetTypeID(v46);
      if (v48 == CFBooleanGetTypeID() && CFBooleanGetValue(v47) == 1)
      {
        CFDictionarySetValue(v28, @"FactoryInstall", kCFBooleanTrue);
      }
    }

    v49 = CFDictionaryGetValue(a1, @"Stockholm Advanced Install");
    if (v49)
    {
      v50 = v49;
      v51 = CFGetTypeID(v49);
      if (v51 == CFBooleanGetTypeID() && CFBooleanGetValue(v50) == 1)
      {
        CFDictionarySetValue(v28, @"AdvancedFeatures", kCFBooleanTrue);
      }
    }

    v52 = CFDictionaryGetValue(a1, @"Terminate Applets");
    if (v52)
    {
      v53 = v52;
      v54 = CFGetTypeID(v52);
      if (v54 == CFBooleanGetTypeID() && CFBooleanGetValue(v53) == 1)
      {
        CFDictionarySetValue(v28, @"JcopTerminateApplets", kCFBooleanTrue);
      }
    }

    v55 = CFDictionaryGetValue(a1, @"Stockholm Postflight Script");
    if (v55)
    {
      v56 = v55;
      v57 = CFGetTypeID(v55);
      if (v57 == CFStringGetTypeID())
      {
        CFDictionarySetValue(v28, @"JcopPostflightScript", v56);
      }
    }

    v58 = CFDictionaryGetValue(a1, @"Stockholm Skip JCOP");
    if (v58)
    {
      v59 = v58;
      v60 = CFGetTypeID(v58);
      if (v60 == CFBooleanGetTypeID() && CFBooleanGetValue(v59) == 1)
      {
        CFDictionarySetValue(v28, @"JcopUpdateDisable", kCFBooleanTrue);
      }
    }

    v61 = CFDictionaryGetValue(a1, @"JCOP Type");
    if (v61)
    {
      v62 = v61;
      v63 = CFGetTypeID(v61);
      if (v63 == CFStringGetTypeID())
      {
        if (CFEqual(v62, @"Development"))
        {
          v64 = 1;
        }

        else
        {
          v64 = 2 * (CFEqual(v62, @"Production") != 0);
        }

        *valuePtr = v64;
        v65 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, valuePtr);
        CFDictionarySetValue(v28, @"JcopKeyType", v65);
        CFRelease(v65);
      }
    }

    v66 = CFDictionaryGetValue(a1, @"Stockholm Verify JCOP");
    if (v66)
    {
      v67 = v66;
      v68 = CFGetTypeID(v66);
      if (v68 == CFBooleanGetTypeID() && CFBooleanGetValue(v67) == 1)
      {
        CFDictionarySetValue(v28, @"JcopValidateConfig", kCFBooleanTrue);
      }
    }

    v69 = CFDictionaryGetValue(a1, @"StockholmOptions");
    ramrod_log_msg("Adding stockholm options dictionary %d", v70, v71, v72, v73, v74, v75, v76, v69 != 0);
    if (v69)
    {
      v77 = CFGetTypeID(v69);
      if (v77 == CFDictionaryGetTypeID())
      {
        CFDictionarySetValue(v28, @"StockholmOptions", v69);
      }
    }
  }

  v81 = v26(v28, stockholm_progress_callback, sub_43094, &cf, 0);
  if (cf)
  {
    CFRetain(cf);
  }

  if (v81)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1007, cf, @"%s: NfRestore Failed. NfResult: %d", v78, v79, v80, "update_stockholm");
    if (cf)
    {
      CFRelease(cf);
    }

    v82 = 0;
    goto LABEL_58;
  }

  if (cf)
  {
    if (a4)
    {
      *a4 = cf;
    }

    else
    {
      CFRelease(cf);
    }
  }

LABEL_57:
  v82 = 1;
LABEL_58:
  (*(a2 + 8))(4, 100, a3);
  CFRelease(v28);
  if (v37)
  {
    CFRelease(v37);
  }

  return v82;
}

void skip_NAND_update(uint64_t a1)
{
  bzero(v18, 0x400uLL);
  ramrod_log_msg("skipping update_NAND\n", v2, v3, v4, v5, v6, v7, v8, v16);
  v16 = *off_1A9808;
  v17 = 0;
  if (ramrod_execute_command_get_cstring_result(&v16, v18, 1024))
  {
    sub_D7EC4(a1, v9, v10, v11, v12, v13, v14, v15);
  }
}

CFPropertyListRef query_nvmefwupdater(const __CFData *Length, CFErrorRef *a2)
{
  bzero(bytes, 0x400uLL);
  memset(&v37, 0, sizeof(v37));
  if (stat("/usr/bin/nvmefwupdater", &v37) == -1)
  {
    ramrod_log_msg("nvmefwupdater missing at %s\n", v4, v5, v6, v7, v8, v9, v10, "/usr/bin/nvmefwupdater");
    return 0;
  }

  v38 = *off_1A9820;
  v39 = *algn_1A9830;
  if (Length)
  {
    BytePtr = CFDataGetBytePtr(Length);
    Length = CFDataGetLength(Length);
    *&v39 = "-";
    ramrod_log_msg("Overriding NAND BFH firmware\n", v12, v13, v14, v15, v16, v17, v18, v36);
  }

  else
  {
    BytePtr = 0;
  }

  cstring_result = ramrod_execute_command_with_input_data_get_cstring_result(&v38, BytePtr, Length, bytes, 1024);
  if (cstring_result)
  {
    sub_D7F1C(cstring_result, a2, v21, v22, v23, v24, v25, v26);
    return 0;
  }

  v27 = CFDataCreate(kCFAllocatorDefault, bytes, 1024);
  v19 = CFPropertyListCreateWithData(kCFAllocatorDefault, v27, 0, 0, 0);
  if (!v19)
  {
    sub_D7F80(a2, v28, v29, v30, v31, v32, v33, v34);
    if (!v27)
    {
      return v19;
    }

    goto LABEL_10;
  }

  if (v27)
  {
LABEL_10:
    CFRelease(v27);
  }

  return v19;
}

uint64_t _validate_NAND_firmware(_BYTE *a1, _BYTE *a2, _BYTE *a3, CFErrorRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*a1)
  {
    sub_D8088(a4, a2, a3, a4, a5, a6, a7, a8);
    return 1;
  }

  if ((*a2 != 0) != (*a3 != 0))
  {
    sub_D7FE0(*a2 != 0, a2, a4, a4, a5, a6, a7, a8);
    return 1;
  }

  return 0;
}

uint64_t update_NAND(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  bzero(buffer, 0x400uLL);
  bzero(v155, 0x400uLL);
  bzero(v154, 0x400uLL);
  ramrod_log_msg("entering update_NAND\n", v6, v7, v8, v9, v10, v11, v12, v144);
  v151 = xmmword_1A9860;
  v152 = unk_1A9870;
  v153 = xmmword_1A9880;
  v149 = off_1A9840;
  v150 = *algn_1A9850;
  if (ramrod_should_do_legacy_restored_internal_behaviors() && CFDictionaryGetValue(a1, @"SkipS3E") == kCFBooleanTrue)
  {
    skip_NAND_update(a4);
    return 1;
  }

  Value = CFDictionaryGetValue(a1, @"EraseInstall");
  v14 = CFDictionaryGetValue(a1, @"NAND filepath");
  v15 = CFDictionaryGetValue(a1, @"PHY Text filepath");
  v16 = CFDictionaryGetValue(a1, @"PHY Data filepath");
  v24 = v16;
  if (!v14 && !v15 && !v16)
  {
    ramrod_log_msg("No queried filepaths found in updater options\n", v17, v18, v19, v20, v21, v22, v23, v145);
    nvmefwupdater = query_nvmefwupdater(0, a4);
    v14 = CFDictionaryGetValue(nvmefwupdater, @"nand");
    v15 = CFDictionaryGetValue(nvmefwupdater, @"phy_text");
    v24 = CFDictionaryGetValue(nvmefwupdater, @"phy_data");
  }

  memset(&v148, 0, sizeof(v148));
  if (v14)
  {
    v145 = "/usr/standalone/firmware/";
    v26 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s%@");
    CFStringGetCString(v26, buffer, 1024, 0x8000100u);
    CFRelease(v26);
  }

  if (v15)
  {
    v145 = "/usr/standalone/firmware/";
    v27 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s%@");
    CFStringGetCString(v27, v155, 1024, 0x8000100u);
    CFRelease(v27);
  }

  if (v24)
  {
    v145 = "/usr/standalone/firmware/";
    v28 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s%@");
    CFStringGetCString(v28, v154, 1024, 0x8000100u);
    CFRelease(v28);
  }

  if (ramrod_should_do_legacy_restored_internal_behaviors())
  {
    ramrod_create_directory_with_class("/mnt5/usr/standalone/firmware/", 0x1EDu, 0, 0, -1, 1);
    if (CFDictionaryContainsKey(a1, @"S3E Override Folder"))
    {
      v33 = CFDictionaryGetValue(a1, @"S3E Override Folder");
      v34 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%snand_fw.pak", "/mnt5/usr/standalone/firmware/");
      CStringPtr = CFStringGetCStringPtr(v34, 0x8000100u);
      ramrod_write_data_to_file_with_class(v33, CStringPtr, -1);
      v36 = CFStringGetCStringPtr(v34, 0x8000100u);
      ramrod_log_msg("Overriding NAND firmware: %s\n", v37, v38, v39, v40, v41, v42, v43, v36);
      CFStringGetCString(v34, buffer, 1024, 0x8000100u);
      if (v34)
      {
        CFRelease(v34);
      }
    }

    if (CFDictionaryContainsKey(a1, @"PHY Text Override"))
    {
      v44 = CFDictionaryGetValue(a1, @"PHY Text Override");
      v45 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%sphy_text.bin", "/mnt5/usr/standalone/firmware/", @"phy_text", *&v148.st_dev, v148.st_ino, *&v148.st_uid, *&v148.st_rdev, v148.st_atimespec.tv_sec, v148.st_atimespec.tv_nsec, v148.st_mtimespec.tv_sec, v148.st_mtimespec.tv_nsec, v148.st_ctimespec.tv_sec, v148.st_ctimespec.tv_nsec, v148.st_birthtimespec.tv_sec, v148.st_birthtimespec.tv_nsec, v148.st_size, v148.st_blocks, *&v148.st_blksize, *&v148.st_gen, v148.st_qspare[0], v148.st_qspare[1], v149, v150, v151, v152, v153);
      v46 = CFStringGetCStringPtr(v45, 0x8000100u);
      ramrod_write_data_to_file_with_class(v44, v46, -1);
      v47 = CFStringGetCStringPtr(v45, 0x8000100u);
      ramrod_log_msg("Overriding PHY text: %s\n", v48, v49, v50, v51, v52, v53, v54, v47);
      CFStringGetCString(v45, v155, 1024, 0x8000100u);
      if (v45)
      {
        CFRelease(v45);
      }
    }

    if (CFDictionaryContainsKey(a1, @"PHY Data Override"))
    {
      v55 = CFDictionaryGetValue(a1, @"PHY Data Override");
      v56 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%sphy_data.bin", "/mnt5/usr/standalone/firmware/", @"phy_data");
      v57 = CFStringGetCStringPtr(v56, 0x8000100u);
      ramrod_write_data_to_file_with_class(v55, v57, -1);
      v58 = CFStringGetCStringPtr(v56, 0x8000100u);
      ramrod_log_msg("Overriding PHY data: %s\n", v59, v60, v61, v62, v63, v64, v65, v58);
      CFStringGetCString(v56, v154, 1024, 0x8000100u);
      if (v56)
      {
        CFRelease(v56);
      }
    }

    if (CFDictionaryGetValue(a1, @"SkipPHYUpdate") == kCFBooleanTrue)
    {
      ramrod_log_msg("Skipping PHY update, ignoring overrides\n", v66, v67, v68, v29, v30, v31, v32, v145);
      v155[0] = 0;
      v154[0] = 0;
    }
  }

  if (_validate_NAND_firmware(buffer, v155, v154, a4, v29, v30, v31, v32))
  {
    return 0;
  }

  if (stat(buffer, &v148))
  {
    ramrod_log_msg("error: NAND firmware does not exist: %s\n", v70, v71, v72, v73, v74, v75, v76, buffer);
    skip_NAND_update(a4);
    if (a4)
    {
      ramrod_create_error_cf(a4, @"RamrodErrorDomain", 8, *a4, @"%s: missing NAND information %s", v77, v78, v79, "update_NAND");
    }

    return 1;
  }

  if (v155[0] && v154[0])
  {
    if (stat(v155, &v148))
    {
      ramrod_log_msg("error: PHY text does not exist: %s\n", v80, v81, v82, v83, v84, v85, v86, v155);
      return 0;
    }

    v87 = v154;
    if (stat(v154, &v148))
    {
      ramrod_log_msg("error: PHY data does not exist: %s\n", v88, v89, v90, v91, v92, v93, v94, v154);
      return 0;
    }

    v95 = &v152 + 8;
    ramrod_log_msg("Updating NAND: %s\n", v88, v89, v90, v91, v92, v93, v94, buffer);
    ramrod_log_msg("Updating PHY: text: %s data: %s\n", v96, v97, v98, v99, v100, v101, v102, v155);
    *(&v149 + 1) = "--validate";
    *&v150 = "--nand_fw";
    *(&v150 + 1) = buffer;
    *&v151 = "--phy_text";
    *(&v151 + 1) = v155;
    *&v152 = "--phy_data";
  }

  else
  {
    v95 = &v150 + 8;
    v87 = buffer;
    ramrod_log_msg("Updating NAND: %s\n", v70, v71, v72, v73, v74, v75, v76, buffer);
    ramrod_log_msg("No PHY update data provided; skipping PHY update\n", v103, v104, v105, v106, v107, v108, v109, v147);
    *(&v149 + 1) = "--validate";
    *&v150 = "--nand_fw";
  }

  *v95 = v87;
  v110 = ramrod_execute_command(&v149);
  if (v110 > 3)
  {
    if (v110 == 4)
    {
      ramrod_log_msg("ECC or DM version mismatch. Production update required\n", v111, v112, v113, v114, v115, v116, v117, v146);
      v121 = @"%s: ECC or DM version mismatch. Production update required";
      goto LABEL_53;
    }

    if (v110 != 5)
    {
      goto LABEL_51;
    }

    if (Value != kCFBooleanTrue)
    {
      ramrod_log_msg("FTL version mismatch. Erase install required\n", v111, v112, v113, v114, v115, v116, v117, v146);
      v121 = @"%s: FTL version mismatch. Erase install required";
      goto LABEL_53;
    }
  }

  else if (v110 != 1)
  {
    if (v110 == 3)
    {
      ramrod_log_msg("Invalid FW package\n", v111, v112, v113, v114, v115, v116, v117, v146);
      v121 = @"%s: Invalid FW package";
LABEL_53:
      ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, v121, v118, v119, v120, "update_NAND");
      return 0;
    }

LABEL_51:
    ramrod_log_msg("Unknown return value %d from --validate\n", v111, v112, v113, v114, v115, v116, v117, v110);
    v121 = @"%s: failed to validate NAND update file";
    goto LABEL_53;
  }

  *(&v149 + 1) = "--update";
  v122 = ramrod_execute_command(&v149);
  if (v122 <= 3)
  {
    if (v122 != 1)
    {
      if (v122 == 3)
      {
        ramrod_log_msg("Update NAND - Invalid FW package\n", v123, v124, v125, v126, v127, v128, v129, v146);
        v121 = @"%s: Update NAND - Invalid FW package";
        goto LABEL_53;
      }

LABEL_65:
      ramrod_log_msg("Unknown return value %d from --update\n", v123, v124, v125, v126, v127, v128, v129, v122);
      v121 = @"%s: failed to update NAND update file";
      goto LABEL_53;
    }
  }

  else
  {
    if (v122 == 4)
    {
      ramrod_log_msg("Update NAND - ECC or DM version mismatch. Production update required\n", v123, v124, v125, v126, v127, v128, v129, v146);
      v121 = @"%s: Update NAND - ECC or DM version mismatch. Production update required";
      goto LABEL_53;
    }

    if (v122 != 5)
    {
      if (v122 == 6)
      {
        ramrod_log_msg("Update NAND - failed. Retry requested\n", v123, v124, v125, v126, v127, v128, v129, v146);
        ramrod_create_error_cf(a4, @"RamrodErrorDomain", 13, 0, @"%s: NAND update failed with error %d, retrying", v130, v131, v132, "update_NAND");
        return 0;
      }

      goto LABEL_65;
    }

    if (Value != kCFBooleanTrue)
    {
      ramrod_log_msg("Update NAND - FTL version mismatch. Erase install required\n", v123, v124, v125, v126, v127, v128, v129, v146);
      v121 = @"%s: Update NAND - FTL version mismatch. Erase install required";
      goto LABEL_53;
    }
  }

  if (!ramrod_should_do_legacy_restored_internal_behaviors() || (v133 = CFDictionaryGetValue(a1, @"NAND Tunable Tables Override Bundle")) == 0)
  {
    *(&v149 + 1) = "--sendtunabletables";
    *&v150 = 0;
    v138 = ramrod_execute_command(&v149);
    if (v138 <= 7)
    {
      if (!v138)
      {
        return 1;
      }

      if (v138 == 7)
      {
        v121 = @"%s: Failed to send ramdisk NAND tunable table data to device\n";
        goto LABEL_53;
      }

LABEL_73:
      v121 = @"%s: Failed to read NAND tunable table data from ramdisk with error %d\n";
      goto LABEL_53;
    }

    if (v138 == 8)
    {
      v143 = "Note: A file was not found on the ramdisk for tunable table data\n";
    }

    else
    {
      if (v138 != 9)
      {
        goto LABEL_73;
      }

      v143 = "nvmefwupdater was unable to find the tunable table bundle name in the device tree\n";
    }

    ramrod_log_msg(v143, v139, v140, v141, v142, v118, v119, v120, v146);
    return 1;
  }

  v134 = v133;
  *(&v149 + 1) = "--sendtunabletables";
  *&v150 = "-";
  BytePtr = CFDataGetBytePtr(v133);
  Length = CFDataGetLength(v134);
  v137 = ramrod_execute_command_with_input_data(&v149, BytePtr, Length);
  if (v137)
  {
    if (v137 == 7)
    {
      v121 = @"%s: Failed to send override NAND tunable table data to device\n";
    }

    else
    {
      v121 = @"%s: Failed to read override NAND tunable table data from Purple Restore with error %d\n";
    }

    goto LABEL_53;
  }

  return 1;
}

uint64_t update_usbc()
{
  v0 = off_1AD4C8();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v99 = *off_1A9890;
  v100 = unk_1A98A0;
  v101 = xmmword_1A98B0;
  bzero(v98, 0x2000uLL);
  cf = 0;
  value = 0;
  *bytes = 1;
  URLFromString = AMSupportCreateURLFromString();
  ramrod_log_msg("entering %s\n", v7, v8, v9, v10, v11, v12, v13, "update_usbc");
  v14 = CFDictionaryContainsKey(*(v4 + 8), @"UUID");
  if (v14)
  {
    *(&v100 + 1) = "/mnt5/usbcfw.version";
    v15 = "--stashExpectedFWVersion";
  }

  else
  {
    v15 = "--reset";
  }

  *&v100 = v15;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    goto LABEL_13;
  }

  v17 = Mutable;
  v18 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v18)
  {
    v38 = "Couldn't create a propertyMatchingDict to update USB-C firmware.\n";
LABEL_12:
    ramrod_log_msg(v38, v19, v20, v21, v22, v23, v24, v25, v91);
LABEL_13:
    v39 = 0;
    goto LABEL_14;
  }

  v26 = v18;
  v27 = CFDataCreate(kCFAllocatorDefault, bytes, 4);
  if (!v27)
  {
    v38 = "Couldn't create a swdFlashPayloadDataRef to update USB-C firmware.\n";
    goto LABEL_12;
  }

  CFDictionarySetValue(v26, @"usbc-flash-update", v27);
  CFDictionarySetValue(v17, @"IOPropertyMatch", v26);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v17);
  if (!MatchingService)
  {
    ramrod_log_msg("No valid USB-C device found. Skipping updater.\n", v29, v30, v31, v32, v33, v34, v35, v91);
    v39 = 1;
    goto LABEL_14;
  }

  v36 = MatchingService;
  ramrod_delete_NVRAM_variable(@"usbcfw.version", 0);
  ramrod_delete_NVRAM_variable(@"ramrod-kickstart-aces", 0);
  if (CFDictionaryGetValueIfPresent(v5, @"USBC", &value))
  {
    v37 = value;
  }

  else
  {
    v37 = kCFBooleanTrue;
    value = kCFBooleanTrue;
  }

  if (!CFBooleanGetValue(v37))
  {
    goto LABEL_37;
  }

  if (ramrod_should_do_legacy_restored_internal_behaviors() && ramrod_ticket_has_BOOLean_entitlement(1635083887, v41, v42, v43, v44, v45, v46, v47) && CFDictionaryGetValueIfPresent(v5, @"USB-C FW Data", &cf))
  {
    bzero(v97, 0x400uLL);
    if (ramrod_write_data_to_file_with_class(cf, "/mnt5/USB-C_HPM,2.bin", -1))
    {
      ramrod_create_error_cf(v2, @"RamrodErrorDomain", 7, 0, @"%s: %s: Failed to write out USB-C firmware file to %s.", v48, v49, v50, "update_usbc");
      v39 = 0;
      goto LABEL_38;
    }

    __sprintf_chk(v97, 0, 0x400uLL, "--flash=%s", "/mnt5/USB-C_HPM,2.bin");
    ramrod_log_msg("Instructing USBC FW flasher to use the FW at %s instead of the normal path.\n", v51, v52, v53, v54, v55, v56, v57, "/mnt5/USB-C_HPM,2.bin");
    *&v101 = v97;
  }

  cstring_result = ramrod_execute_command_get_cstring_result(&v99, v98, 0x2000);
  if (!cstring_result)
  {
    ramrod_log_msg("USBC update succceeded. Looking for version file in %s\n", v59, v60, v61, v62, v63, v64, v65, "/mnt5/usbcfw.version");
    if (!AMSupportCreateDataFromFileURL())
    {
      ramrod_log_msg("Found USBC version file, reading it in.\n", v67, v68, v69, v70, v71, v72, v73, v92);
      v74 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, 0, 0x8000100u);
      if (v74)
      {
        v82 = v74;
        CStringPtr = CFStringGetCStringPtr(v74, 0x8000100u);
        ramrod_log_msg("Read USBC version file: %s\n", v84, v85, v86, v87, v88, v89, v90, CStringPtr);
        ramrod_set_NVRAM_variable(@"usbcfw.version", v82, 0);
        CFRelease(v82);
      }

      else
      {
        ramrod_log_msg("Couldn't create string from read CFDataRef.\n", v75, v76, v77, v78, v79, v80, v81, v93);
      }
    }

    if (v14)
    {
      ramrod_set_NVRAM_variable(@"ramrod-kickstart-aces", @"1", 0);
    }

LABEL_37:
    v39 = 1;
    goto LABEL_38;
  }

  v66 = cstring_result;
  if (cstring_result == 99)
  {
    v39 = 1;
  }

  else
  {
    ramrod_create_error_cf(v2, @"RamrodErrorDomain", 7, 0, @"%s: USB-C firmware update failed with error: %d. Output: %s", v63, v64, v65, "update_usbc");
    v39 = 0;
  }

  ramrod_log_msg("USBC update failed with a sustained failure: %d. Output: %s. Proceeding without updating USBC.\n", v59, v60, v61, v62, v63, v64, v65, v66);
LABEL_38:
  IOObjectRelease(v36);
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_14:
  if (URLFromString)
  {
    CFRelease(URLFromString);
  }

  return v39;
}

void _AddOtherFlashImages(const __CFString *a1, const void *a2, __CFArray **a3)
{
  if (CFStringCompare(a1, @"iBoot", 0) && CFStringCompare(a1, @"LLB", 0))
  {
    v6 = *a3;

    CFArrayAppendValue(v6, a2);
  }
}

uint64_t _copy_current_fdr_ean_values()
{
  theArray = 0;
  value = 0;
  v10 = 0;
  if (ramrod_ticket_copy())
  {
    if (AMFDRSealingMapGetEntriesForDevice())
    {
      if (AMFDRSealingMapCopyDataClassesWithAttribute())
      {
        v7 = "No FDR Data for EAN.\n";
      }

      else
      {
        v7 = "AMFDRSealingMapCopyDataClassesWithAttribute returned failure\n";
      }
    }

    else
    {
      v7 = "Skipping update_fdr_ean on non-FDR device\n";
    }
  }

  else
  {
    v7 = "Failed to get ap_ticket.\n";
  }

  ramrod_log_msg(v7, v0, v1, v2, v3, v4, v5, v6, v9);
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return 0;
}

uint64_t _copy_fdr_ean_values(const __CFString *a1, _DWORD *a2, CFDataRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  theData = 0;
  if (sub_2E3CC(a1, &theData, a3, a4, a5, a6, a7, a8))
  {
    Length = CFDataGetLength(theData);
    if (Length > 0x1F)
    {
      v26 = Length;
      BytePtr = CFDataGetBytePtr(theData);
      if (*BytePtr == 1769104486)
      {
        if (*(BytePtr + 1) == 1)
        {
          v35 = *(BytePtr + 2);
          if ((v35 + 1) > 1)
          {
            v39 = *(BytePtr + 3);
            if (v39 > 0x1F)
            {
              v40 = *(BytePtr + 4);
              if (v40)
              {
                if (v26 <= v40 + v39)
                {
                  v36 = "Hash is extends outside payload.\n";
                }

                else
                {
                  v41 = *(BytePtr + 5);
                  if (v41)
                  {
                    if (16 * v41 != *(BytePtr + 7))
                    {
                      ramrod_log_msg("FDR info payload is incorrect size.\n\tExpect: %d * %lu = %zu\n\tFound: %d", v28, v29, v30, v31, v32, v33, v34, v41);
                      goto LABEL_12;
                    }

                    if (a2)
                    {
                      *a2 = v35;
                    }

                    if (a3)
                    {
                      v42 = CFDataCreate(kCFAllocatorDefault, &BytePtr[*(BytePtr + 3)], *(BytePtr + 4));
                      if (!v42)
                      {
                        goto LABEL_12;
                      }

                      *a3 = v42;
                    }

                    v37 = 1;
                    goto LABEL_13;
                  }

                  v36 = "FDR info payload is empty.\n";
                }
              }

              else
              {
                v36 = "Hash size is zero.\n";
              }
            }

            else
            {
              v36 = "Hash is inside header.\n";
            }
          }

          else
          {
            v36 = "Generation count is invalid.\n";
          }
        }

        else
        {
          v43 = 1;
          v36 = "Bad fdr info header version.\n\tExpect: %d\n\tFound: %d\n";
        }

        ramrod_log_msg(v36, v28, v29, v30, v31, v32, v33, v34, v43);
      }

      else
      {
        ramrod_log_msg("Bad fdr info header magic.\n\tExpect: %d\n\tFound: %d\n", v28, v29, v30, v31, v32, v33, v34, 102);
      }
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
      ramrod_log_msg("Entry too small to be versioned blob: %s\n", v12, v13, v14, v15, v16, v17, v18, CStringPtr);
    }
  }

  else
  {
    v45 = CFStringGetCStringPtr(a1, 0x8000100u);
    ramrod_log_msg("Failed to load EAN key: %s\n", v19, v20, v21, v22, v23, v24, v25, v45);
  }

LABEL_12:
  v37 = 0;
LABEL_13:
  AMSupportSafeRelease();
  return v37;
}

void *sub_2E3CC(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  connect = 0;
  input = 0;
  v60 = 0;
  v61 = 0;
  output = 0;
  outputCnt = 1;
  if (!a1)
  {
    v50 = "key is NULL.\n";
    goto LABEL_27;
  }

  v9 = a2;
  if (a2)
  {
    v17 = sub_430C4(a1, a2, a3, a4, a5, a6, a7, a8);
    if (!v17)
    {
      ramrod_log_msg("payloadType is invalid.\n", v10, v11, v12, v13, v14, v15, v16, outputStruct);
      goto LABEL_15;
    }

    v18 = sub_33448(a1, v10, v11, v12, v13, v14, v15, v16);
    v26 = v18;
    if (!v18)
    {
      ramrod_log_msg("Key %c%c%c%c not found.\n", v19, v20, v21, v22, v23, v24, v25, SHIBYTE(v17));
      v17 = 0;
      goto LABEL_15;
    }

    if ((v18 & 0xFFF) != 0)
    {
      ramrod_log_msg("payloadSize isn't %d-aligned.\n", v19, v20, v21, v22, v23, v24, v25, 0);
      v17 = 0;
      goto LABEL_15;
    }

    ramrod_log_msg("Reading EAN key %c%c%c%c.\n", v19, v20, v21, v22, v23, v24, v25, SHIBYTE(v17));
    v27 = calloc(1uLL, v26);
    v28 = v27;
    if (v27)
    {
      input = v17;
      v60 = v27;
      v61 = v26;
      v29 = IOServiceMatching("AppleNVMeEAN");
      MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v29);
      v17 = MatchingService;
      if (!MatchingService)
      {
        v51 = "IOServiceGetMatchingService failed to find kNVMeEANServiceMatchName.\n";
LABEL_32:
        ramrod_log_msg(v51, v31, v32, v33, v34, v35, v36, v37, outputStructa);
        goto LABEL_15;
      }

      v38 = IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
      if (!v38)
      {
        if (connect)
        {
          v39 = IOConnectCallMethod(connect, 4u, &input, 3u, 0, 0, &output, &outputCnt, 0, 0);
          if (!v39)
          {
            v40 = CFDataCreate(kCFAllocatorDefault, v28, v26);
            v48 = v40;
            if (v40)
            {
              if (CFDataGetLength(v40) > 0)
              {
                *v9 = CFRetain(v48);
                v9 = (&dword_0 + 1);
                goto LABEL_16;
              }

              v52 = "CFData is 0 bytes.\n";
            }

            else
            {
              v52 = "CFDataCreate returned NULL.\n";
            }

            ramrod_log_msg(v52, v41, v42, v43, v44, v45, v46, v47, outputStructb);
            goto LABEL_15;
          }

          outputStructa = v39;
          v51 = "read failed, kernResult = 0x%x.\n";
        }

        else
        {
          v51 = "IOServiceOpen returned IO_OBJECT_NULL.\n";
        }

        goto LABEL_32;
      }

      ramrod_log_msg("IOServiceOpen returned result=0x%04x.\n", v31, v32, v33, v34, v35, v36, v37, v38);
LABEL_15:
      v9 = 0;
      goto LABEL_16;
    }

    outputStruct = 0;
    v50 = "Failed to calloc() buffer %llu bytes.\n";
LABEL_27:
    ramrod_log_msg(v50, a2, a3, a4, a5, a6, a7, a8, outputStruct);
    v17 = 0;
    goto LABEL_15;
  }

  ramrod_log_msg("outData is NULL.\n", 0, a3, a4, a5, a6, a7, a8, outputStruct);
  v17 = 0;
LABEL_16:
  AMSupportSafeFree();
  if (connect)
  {
    IOServiceClose(connect);
    connect = 0;
  }

  if (v17)
  {
    IOObjectRelease(v17);
  }

  AMSupportSafeRelease();
  return v9;
}

BOOL ramrod_copy_euicccsn_str(CFTypeRef *a1)
{
  v1 = qword_1C6BA8;
  if (a1 && qword_1C6BA8)
  {
    *a1 = CFRetain(qword_1C6BA8);
  }

  return v1 != 0;
}

void _baseband_update_requires_filesystems_once()
{
  if (!ramrod_device_has_baseband_legacy() && !ramrod_device_has_baseband())
  {
    v4 = 0;
    v3 = 0;
    goto LABEL_26;
  }

  v3 = BBUpdaterExtremeCreateWithError();
  if (!v3)
  {
    ramrod_create_error_cf(&qword_1C6BB0, @"RamrodErrorDomain", 1005, 0, @"%s: BBUpdaterExtremeCreateWithError failed", v0, v1, v2, "_baseband_update_requires_filesystems_once");
    v4 = 0;
    goto LABEL_26;
  }

  BBUpdaterRegisterLogSink();
  v4 = sub_2EA98(0, 0, &qword_1C6BB0);
  if (!v4)
  {
    goto LABEL_26;
  }

  if (!BBUpdaterSetOptions())
  {
    v36 = @"%s: BBUpdaterSetOptions rejected options";
LABEL_25:
    ramrod_create_error_cf(&qword_1C6BB0, @"RamrodErrorDomain", 1005, 0, v36, v9, v10, v11, "_baseband_update_requires_filesystems_once");
    goto LABEL_26;
  }

  ramrod_log_msg("%s: querying baseband to determine if it requires system filesystem\n", v5, v6, v7, v8, v9, v10, v11, "_baseband_update_requires_filesystems_once");
  if (!BBUpdaterExecCommand())
  {
    v36 = @"%s: failed querying baseband";
    goto LABEL_25;
  }

  bzero(buffer, 0x800uLL);
  v12 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", 0);
  if (v12)
  {
    v13 = v12;
    if (CFStringGetCString(v12, buffer, 2048, 0x8000100u))
    {
      ramrod_log_msg("%s: query returned %s\n", v14, v15, v16, v17, v18, v19, v20, "_baseband_update_requires_filesystems_once");
    }

    CFRelease(v13);
  }

  Value = CFDictionaryGetValue(0, @"requireSystemPartitionMount");
  if (Value && (v25 = Value, v26 = CFGetTypeID(Value), v26 == CFBooleanGetTypeID()))
  {
    byte_1C6BB8 = CFBooleanGetValue(v25) != 0;
    v27 = CFDictionaryGetValue(0, @"requireUserPartitionMount");
    if (v27)
    {
      v28 = v27;
      v29 = CFGetTypeID(v27);
      if (v29 == CFBooleanGetTypeID())
      {
        byte_1C6BB9 = CFBooleanGetValue(v28) != 0;
      }
    }

    v30 = CFDictionaryGetValue(0, @"requestedBasebandFSPartitionMountSize");
    if (v30)
    {
      v31 = v30;
      v32 = CFGetTypeID(v30);
      if (v32 == CFNumberGetTypeID() && !CFNumberGetValue(v31, kCFNumberLongType, &qword_1C6BC0))
      {
        ramrod_create_error_cf(&qword_1C6BB0, @"RamrodErrorDomain", 3, 0, @"%s: could not convert baseband data partition size to size_t", v33, v34, v35, "_baseband_update_requires_filesystems_once");
      }
    }
  }

  else
  {
    ramrod_create_error_cf(&qword_1C6BB0, @"RamrodErrorDomain", 1004, 0, @"%s: baseband updater failed to indicate if it requires system filesystem mounted", v22, v23, v24, "_baseband_update_requires_filesystems_once");
  }

LABEL_26:
  if (v4)
  {
    CFRelease(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

__CFDictionary *sub_2EA98(const __CFDictionary *a1, const __CFDictionary *a2, CFErrorRef *a3)
{
  v94 = @"Baseband";
  v6 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@%@");
  if (!v6)
  {
    ramrod_create_error_cf(a3, @"RamrodErrorDomain", 6, 0, @"%s: failed to allocate options key", v7, v8, v9, "create_baseband_update_options");
    return 0;
  }

  v10 = v6;
  if (ramrod_device_has_baseband_legacy())
  {
    if (!a1)
    {
      goto LABEL_11;
    }

    v11 = @"Baseband Updater Options";
    v12 = a1;
  }

  else
  {
    if (!ramrod_device_has_baseband())
    {
      ramrod_create_error_cf(a3, @"RamrodErrorDomain", 8, 0, @"%s: device does not have a baseband", v13, v14, v15, "create_baseband_update_options");
      goto LABEL_32;
    }

    if (!a2)
    {
      goto LABEL_11;
    }

    v12 = a2;
    v11 = v10;
  }

  Value = CFDictionaryGetValue(v12, v11);
  if (Value)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, Value);
    goto LABEL_12;
  }

LABEL_11:
  MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
LABEL_12:
  v21 = MutableCopy;
  if (!MutableCopy)
  {
    ramrod_create_error_cf(a3, @"RamrodErrorDomain", 6, 0, @"%s: unable to allocate update options dictionary", v18, v19, v20, "create_baseband_update_options");
LABEL_32:
    CFRelease(v10);
    return 0;
  }

  valuePtr = 0;
  CFDictionarySetValue(MutableCopy, @"autoSetupEnv", kCFBooleanFalse);
  CFDictionarySetValue(v21, @"disablePing", kCFBooleanTrue);
  if (a1)
  {
    v22 = CFDictionaryGetValue(a1, @"Preboot Root");
    if (v22)
    {
      CFDictionarySetValue(v21, @"SystemRoot", v22);
LABEL_16:
      v23 = CFDictionaryGetValue(a1, @"Data Root");
      if (v23)
      {
        CFDictionarySetValue(v21, @"DataRoot", v23);
      }

      v24 = CFDictionaryGetValue(a1, @"Baseband Data Root");
      if (v24)
      {
        CFDictionarySetValue(v21, @"RemoteFSRoot", v24);
      }

      v95 = kCFBooleanTrue;
      v25 = CFDictionaryGetValue(a1, @"Restore NV Items");
      if (v25)
      {
        CFDictionarySetValue(v21, @"NVRestoreSetting", v25);
      }

      v26 = ramrod_ticket_copy();
      if (v26)
      {
        CFDictionarySetValue(v21, @"apTicket", v26);
      }

      goto LABEL_26;
    }

    pthread_once(&stru_1C4808, _baseband_update_requires_filesystems_once);
    if (a3)
    {
      v66 = qword_1C6BB0;
      *a3 = qword_1C6BB0;
      if (v66)
      {
        ramrod_log_msg("%s: Failed to query baseband.\n", v59, v60, v61, v62, v63, v64, v65, "create_baseband_update_options");
        CFRelease(*a3);
        v58 = 0;
        v26 = 0;
        *a3 = 0;
        goto LABEL_63;
      }

      if (byte_1C6BB8 != 1)
      {
        goto LABEL_16;
      }
    }

    else if ((byte_1C6BB8 & 1) == 0)
    {
      goto LABEL_16;
    }

    ramrod_create_error_cf(a3, @"RamrodErrorDomain", 1006, 0, @"%s: Baseband requires system filesystem to be mounted but it is not.", v63, v64, v65, "create_baseband_update_options");
    v58 = 0;
    v26 = 0;
    goto LABEL_63;
  }

  v95 = kCFBooleanTrue;
  v26 = 0;
LABEL_26:
  v27 = IOServiceNameMatching("baseband");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v27);
  if (MatchingService)
  {
    v36 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"imeisv", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      v45 = CFProperty;
      v46 = CFGetTypeID(CFProperty);
      if (v46 == CFDataGetTypeID())
      {
        v54 = *CFDataGetBytePtr(v45);
      }

      else
      {
        ramrod_log_msg("imeisv property has unexpected type, using 0\n", v47, v48, v49, v50, v51, v52, v53, @"Baseband");
        v54 = 0;
      }

      CFRelease(v45);
      IOObjectRelease(v36);
      valuePtr = v54;
      if (v54 < 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
      ramrod_log_msg("imeisv property not found, using 0\n", v38, v39, v40, v41, v42, v43, v44, @"Baseband");
      IOObjectRelease(v36);
      valuePtr = 0;
    }

    ramrod_log_msg("%s: Got imeisv: %d\n", v67, v68, v69, v70, v71, v72, v73, "create_baseband_update_options");
    v74 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
    if (v74)
    {
      v78 = v74;
      CFDictionarySetValue(v21, @"IMEISwVersion", v74);
      CFRelease(v78);
      if (ramrod_should_do_legacy_restored_internal_behaviors())
      {
        v79 = v95;
      }

      else
      {
        v79 = kCFBooleanFalse;
      }

      CFDictionarySetValue(v21, @"restoredInternal", v79);
      if (ramrod_device_has_baseband_legacy())
      {
        v80 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v21);
        if (v80)
        {
          v58 = v80;
          goto LABEL_63;
        }
      }

      else
      {
        if (a2)
        {
          Mutable = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a2);
        }

        else
        {
          Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        }

        v58 = Mutable;
        if (Mutable)
        {
          if (a1)
          {
            v83 = CFDictionaryGetValue(a1, @"Baseband Updater Options");
            if (v83)
            {
              CFDictionaryApplyFunction(v83, sub_43194, v21);
            }
          }

          CFDictionarySetValue(v58, v10, v21);
          goto LABEL_63;
        }
      }

      v81 = @"%s: unable to allocate CFDictionary";
    }

    else
    {
      v81 = @"%s: unable to allocate CFNumber";
    }

    ramrod_create_error_cf(a3, @"RamrodErrorDomain", 6, 0, v81, v75, v76, v77, "create_baseband_update_options");
LABEL_62:
    v58 = 0;
    goto LABEL_63;
  }

  ramrod_log_msg("unable to find baseband service\n", v29, v30, v31, v32, v33, v34, v35, @"Baseband");
  ramrod_create_error_cf(a3, @"RamrodErrorDomain", 4, 0, @"%s: unable to get baseband service", v55, v56, v57, "get_imeisv");
  v58 = 0;
  valuePtr = -1;
LABEL_63:
  v84 = CFCopyDescription(v21);
  if (v84)
  {
    v85 = v84;
    bzero(buffer, 0x800uLL);
    if (CFStringGetCString(v85, buffer, 2048, 0x8000100u) == 1)
    {
      ramrod_log_msg("baseband updater options = %s\n", v86, v87, v88, v89, v90, v91, v92, buffer);
    }

    else
    {
      ramrod_log_msg("unable to get updater options string\n", v86, v87, v88, v89, v90, v91, v92, v94);
    }

    CFRelease(v85);
  }

  CFRelease(v21);
  CFRelease(v10);
  if (v26)
  {
    CFRelease(v26);
  }

  return v58;
}

uint64_t ramrod_baseband_verify_sealed_manifest(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  theDict = 0;
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_baseband_verify_sealed_manifest");
  if (!ramrod_device_has_baseband_legacy())
  {
    v61 = 0;
    v62 = 0;
    v63 = 1;
    goto LABEL_40;
  }

  observer[0] = a2;
  observer[1] = a3;
  v15 = BBUpdaterExtremeCreateWithError();
  if (!v15)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1004, cf, @"%s: BBUpdaterExtremeCreateWithError failed", v12, v13, v14, "ramrod_baseband_verify_sealed_manifest");
    v61 = 0;
    v62 = 0;
    v63 = 0;
    goto LABEL_40;
  }

  BBUpdaterRegisterLogSink();
  ramrod_log_msg("%s: registering for progress notifications\n", v16, v17, v18, v19, v20, v21, v22, "ramrod_baseband_verify_sealed_manifest");
  LocalCenter = CFNotificationCenterGetLocalCenter();
  v24 = LocalCenter;
  if (LocalCenter)
  {
    CFNotificationCenterAddObserver(LocalCenter, observer, sub_2F6D4, @"BBUpdateProgress", v15, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 6, 0, @"%s: failed to allocate update_options", v25, v26, v27, "ramrod_baseband_verify_sealed_manifest");
    v33 = 0;
    goto LABEL_37;
  }

  Value = CFDictionaryGetValue(a1, @"Preboot Root");
  if (Value)
  {
    CFDictionarySetValue(Mutable, @"SystemRoot", Value);
  }

  v30 = CFDictionaryGetValue(a1, @"Data Root");
  if (v30)
  {
    CFDictionarySetValue(Mutable, @"DataRoot", v30);
  }

  v31 = CFDictionaryGetValue(a1, @"Baseband Data Root");
  if (v31)
  {
    CFDictionarySetValue(Mutable, @"RemoteFSRoot", v31);
  }

  v32 = CFDictionaryGetValue(a1, @"DebugArgs");
  if (v32)
  {
    CFDictionarySetValue(Mutable, @"DebugArgs", v32);
  }

  v33 = ramrod_ticket_copy();
  if (v33)
  {
    CFDictionarySetValue(Mutable, @"apTicket", v33);
  }

  valuePtr = 1;
  v34 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(Mutable, @"BootMode", v34);
  CFDictionarySetValue(Mutable, @"DisallowFusing", kCFBooleanTrue);
  CFDictionarySetValue(Mutable, @"EraseEFS", kCFBooleanFalse);
  if (!BBUpdaterSetOptions())
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1005, cf, @"%s: BBUpdaterSetOptions rejected options", v35, v36, v37, "ramrod_baseband_verify_sealed_manifest");
    goto LABEL_37;
  }

  bzero(buffer, 0x800uLL);
  v38 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", Mutable);
  if (v38)
  {
    v39 = v38;
    if (CFStringGetCString(v38, buffer, 2048, 0x8000100u))
    {
      ramrod_log_msg("update_options: %s\n", v40, v41, v42, v43, v44, v45, v46, buffer);
    }

    CFRelease(v39);
  }

  if (!BBUpdaterExecCommand())
  {
    ramrod_log_msg("%s: performManifestCheck returned error\n", v47, v48, v49, v50, v51, v52, v53, "ramrod_baseband_verify_sealed_manifest");
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1005, cf, @"%s: failed to perform manifest check", v64, v65, v66, "ramrod_baseband_verify_sealed_manifest");
    (*(a2 + 40))(0, theDict, cf, a3);
    goto LABEL_37;
  }

  ramrod_log_msg("%s: performManifestCheck returned success\n", v47, v48, v49, v50, v51, v52, v53, "ramrod_baseband_verify_sealed_manifest");
  if (!theDict)
  {
    goto LABEL_55;
  }

  v54 = CFDictionaryGetValue(theDict, @"ManifestInfo");
  if (!v54)
  {
    v60 = @"%s: bb_output is missing ManifestInfo\n";
    goto LABEL_35;
  }

  v58 = v54;
  v59 = CFDictionaryGetValue(v54, @"CMStatusCode");
  if (!v59)
  {
    v60 = @"%s: bb_output is missing CMStatusCode\n";
    goto LABEL_35;
  }

  v72 = -1;
  if (!CFNumberGetValue(v59, kCFNumberSInt64Type, &v72))
  {
    v60 = @"%s: failed to convert CMStatusCode";
    goto LABEL_50;
  }

  if (!v72)
  {
    v71 = CFDictionaryGetValue(v58, @"PMStatusCode");
    if (!v71)
    {
      v60 = @"%s: bb_output is missing PMStatusCode\n";
      goto LABEL_35;
    }

    v72 = -1;
    if (CFNumberGetValue(v71, kCFNumberSInt64Type, &v72))
    {
      if (v72)
      {
        v60 = @"%s: baseband rejected provisioning manifest, PMStatusCode=%lld\n";
        goto LABEL_35;
      }

LABEL_55:
      v69 = 1;
      if (!v24)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    v60 = @"%s: failed to convert PMStatusCode";
LABEL_50:
    v67 = a4;
    v68 = 3;
    goto LABEL_36;
  }

  v60 = @"%s: baseband rejected calibration manifest, CMStatusCode=%lld\n";
LABEL_35:
  v67 = a4;
  v68 = 1005;
LABEL_36:
  ramrod_create_error_cf(v67, @"RamrodErrorDomain", v68, 0, v60, v55, v56, v57, "ramrod_baseband_verify_sealed_manifest");
LABEL_37:
  v69 = 0;
  if (v24)
  {
LABEL_38:
    CFNotificationCenterRemoveEveryObserver(v24, observer);
  }

LABEL_39:
  CFRelease(v15);
  v61 = v33;
  v62 = Mutable;
  v63 = v69;
LABEL_40:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  if (v61)
  {
    CFRelease(v61);
  }

  return v63;
}

void sub_2F6D4(int a1, void *a2, uint64_t a3, uint64_t a4, CFDictionaryRef theDict, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (theDict)
  {
    value = 0;
    if (CFDictionaryGetValueIfPresent(theDict, @"percentage", &value) == 1)
    {
      valuePtr = 0;
      CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr);
      (*(*a2 + 8))(3, valuePtr, a2[1]);
    }
  }

  else
  {
    ramrod_log_msg("%s called without user info\n", a2, a3, a4, 0, a6, a7, a8, "bbupdater_progress");
  }
}

void *ramrod_update_copy_baseband_migration_data(CFDictionaryRef theDict, CFErrorRef *a2)
{
  v3 = 0;
  if (sub_2F7A4(1, &v3, theDict, a2))
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2F7A4(int a1, void **a2, CFDictionaryRef theDict, CFErrorRef *a4)
{
  cf = 0;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"Baseband Data Root");
  }

  else
  {
    Value = 0;
  }

  pthread_once(&stru_1C4808, _baseband_update_requires_filesystems_once);
  if (qword_1C6BC0)
  {
    v11 = Value == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1006, 0, @"%s: baseband data filesystem mountpoint is required but was not provided", v8, v9, v10, "_handle_baseband_data_migration");
    v24 = 0;
    goto LABEL_28;
  }

  v15 = BBUpdaterExtremeCreateWithError();
  if (!v15)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1005, 0, @"%s: BBUpdaterExtremeCreateWithError failed", v12, v13, v14, "_handle_baseband_data_migration");
    v24 = 0;
    goto LABEL_28;
  }

  BBUpdaterRegisterLogSink();
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v20 = Mutable;
  if (Mutable)
  {
    if (Value)
    {
      CFDictionarySetValue(Mutable, @"RemoteFSRoot", Value);
    }

    if ((a1 & 1) == 0)
    {
      values = *a2;
      keys = @"MigrationData";
      cf = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    if (BBUpdaterSetOptions())
    {
      if (BBUpdaterExecCommand())
      {
        v24 = 1;
        if (a1 && cf)
        {
          *a2 = CFRetain(cf);
        }

        goto LABEL_26;
      }

      v25 = @"%s: BBUpdater command '%@' failed";
    }

    else
    {
      v25 = @"%s: BBUpdaterSetOptions rejected options";
    }

    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1005, 0, v25, v21, v22, v23, "_handle_baseband_data_migration");
  }

  else
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 6, 0, @"%s: failed to create baseband updater options", v17, v18, v19, "_handle_baseband_data_migration");
  }

  v24 = 0;
LABEL_26:
  BBUpdaterSetOptions();
  CFRelease(v15);
  if (v20)
  {
    CFRelease(v20);
  }

LABEL_28:
  if (cf)
  {
    CFRelease(cf);
  }

  return v24;
}

BOOL ramrod_should_update_baseband(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return ramrod_device_has_baseband() != 0;
  }

  ramrod_log_msg("Skipping checking baseband for booted OS update\n", a2, a3, a4, a5, a6, a7, a8, vars0);
  return 0;
}

uint64_t ramrod_baseband_update_required_baseband_data_filesystem_size(void *a1)
{
  pthread_once(&stru_1C4808, _baseband_update_requires_filesystems_once);
  if (a1)
  {
    *a1 = qword_1C6BB0;
  }

  return qword_1C6BC0;
}

uint64_t ramrod_baseband_update_requires_system_filesystem(void *a1)
{
  pthread_once(&stru_1C4808, _baseband_update_requires_filesystems_once);
  if (a1)
  {
    *a1 = qword_1C6BB0;
  }

  return byte_1C6BB8;
}

uint64_t ramrod_copy_updater_functions(void *a1, const char *a2, __CFDictionary *(***a3)(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4), CFErrorRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2 || !a3)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 3, 0, @"%s: invalid parameters", a6, a7, a8, "ramrod_copy_updater_functions");
    return 0;
  }

  v10 = a2;
  *a3 = 0;
  v12 = malloc(0x20uLL);
  if (!v12)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 6, 0, @"%s: failed to allocate tmp update_functions struct", v13, v14, v15, "ramrod_copy_updater_functions");
    return 0;
  }

  v16 = v12;
  *v12 = 0u;
  *(v12 + 1) = 0u;
  if (!strcmp(v10, "Banyan"))
  {
    v10 = "BanyanUARP";
  }

  if (!strcmp(v10, "Canary"))
  {
    *v16 = sub_2FF18;
    v16[1] = sub_2FFFC;
    v32 = sub_30034;
    v33 = 2;
    goto LABEL_16;
  }

  v20 = sub_2FDE8(a1, v10, "UpdaterCreate", a4, 0, v17, v18, v19);
  *v16 = v20;
  if (!v20 || (v24 = sub_2FDE8(a1, v10, "UpdaterIsDone", a4, 0, v21, v22, v23), (v16[1] = v24) == 0) || (v28 = sub_2FDE8(a1, v10, "UpdaterExecCommand", a4, 0, v25, v26, v27), (v16[2] = v28) == 0))
  {
    free(v16);
    return 0;
  }

  v32 = sub_2FDE8(a1, v10, "UpdaterIsTwoStageSupported", a4, 1, v29, v30, v31);
  v33 = 3;
LABEL_16:
  v16[v33] = v32;
  *a3 = v16;
  return 1;
}

void *sub_2FDE8(void *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2 || !a3)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 3, 0, @"%s: invalid parameters", a6, a7, a8, "load_function");
    return 0;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *__symbol = 0u;
  v16 = 0u;
  __strlcpy_chk();
  __strlcat_chk();
  result = dlsym(a1, __symbol);
  if (!a5 && !result)
  {
    dlerror();
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1012, 0, @"%s: unable to find %s: %s", v12, v13, v14, "load_function");
    return 0;
  }

  return result;
}

__CFDictionary *sub_2FF18(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    if (a1)
    {
      Value = CFDictionaryGetValue(a1, @"Options");
      if (Value)
      {
        CFDictionarySetValue(Mutable, @"Options", Value);
      }
    }

    CFDictionarySetValue(Mutable, @"IsDone", kCFBooleanFalse);
    CFDictionarySetValue(Mutable, @"Loop0", kCFBooleanTrue);
    CFDictionarySetValue(Mutable, @"QueryLoop0", kCFBooleanTrue);
  }

  else
  {
    sub_D829C(a4, v6, v7, v8, v9, v10, v11, v12);
  }

  return Mutable;
}

const __CFDictionary *sub_2FFFC(const __CFDictionary *result)
{
  if (result)
  {
    Value = CFDictionaryGetValue(result, @"IsDone");

    return CFBooleanGetValue(Value);
  }

  return result;
}

uint64_t sub_30034(const __CFDictionary *a1, CFStringRef theString1, uint64_t a3, CFMutableDictionaryRef *a4, CFErrorRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    sub_D838C(a5, theString1, a3, a4, a5, a6, a7, a8);
    return 0;
  }

  if (!theString1)
  {
    sub_D8350(a5, 0, a3, a4, a5, a6, a7, a8);
    return 0;
  }

  if (!a4)
  {
    sub_D8314(a5, theString1, a3, 0, a5, a6, a7, a8);
    return 0;
  }

  if (CFStringCompare(theString1, @"queryInfo", 0))
  {
    if (CFStringCompare(theString1, @"performNextStage", 0))
    {
      ramrod_create_error_cf(a5, @"RamrodErrorDomain", 3, 0, @"%s: %@ invalid command", v12, v13, v14, "_CanaryUpdaterExecCmd");
      return 0;
    }

    Value = CFDictionaryGetValue(a1, @"Loop0");
    ramrod_log_msg_cf(@"PerformNextStage Running, Loop0=%@.", Value);
    if (CFDictionaryGetValue(a1, @"Loop0") == kCFBooleanFalse)
    {
      CFDictionarySetValue(a1, @"IsDone", kCFBooleanTrue);
    }

    v27 = @"Loop0";
    v28 = a1;
    v29 = kCFBooleanFalse;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    *a4 = Mutable;
    if (!Mutable)
    {
      sub_D82D8(a5, v17, v18, v19, v20, v21, v22, v23);
      return 0;
    }

    v24 = CFDictionaryGetValue(a1, @"QueryLoop0");
    ramrod_log_msg_cf(@"QueryInfo Running, Loop0=%@.", v24);
    CFDictionarySetValue(*a4, @"ECID", @"1234567890");
    v25 = *a4;
    v26 = CFDictionaryGetValue(a1, @"QueryLoop0");
    CFDictionarySetValue(v25, @"QueryLoop0", v26);
    CFDictionarySetValue(*a4, @"LocalSigningID", kCFBooleanTrue);
    if (CFDictionaryGetValue(a1, @"QueryLoop0") == kCFBooleanFalse)
    {
      CFDictionarySetValue(a1, @"IsDone", kCFBooleanTrue);
    }

    v27 = @"QueryLoop0";
    v28 = a1;
    v29 = kCFBooleanFalse;
  }

  CFDictionarySetValue(v28, v27, v29);
  return 1;
}

uint64_t ramrod_update_nvram_overrides(const char *a1, __CFDictionary *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    v33 = "options is NULL\n";
LABEL_22:
    ramrod_log_msg(v33, a2, a3, a4, a5, a6, a7, a8, v34);
    goto LABEL_6;
  }

  if (!a1)
  {
    v33 = "updaterName is NULL\n";
    goto LABEL_22;
  }

  CStringPtr = CFStringGetCStringPtr(@"T200", 0x8000100u);
  if (!strcmp(a1, CStringPtr) && (v14 = ramrod_copy_NVRAM_variable_from_devicetree(@"VeridianForceUpdate")) != 0)
  {
    v15 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, v14, 0x8000100u);
    v11 = v15;
    if (v15)
    {
      v16 = CFGetTypeID(v15);
      if (v16 == CFStringGetTypeID() && CFStringCompare(v11, @"yes", 1uLL) == kCFCompareEqualTo)
      {
        ramrod_log_msg("Setting %s=false due to nvram variable %s=yes\n", v17, v18, v19, v20, v21, v22, v23, "SkipSameVersion");
        CFDictionarySetValue(a2, @"SkipSameVersion", kCFBooleanFalse);
        CFDictionarySetValue(a2, @"RestoreInternal", kCFBooleanTrue);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = CFStringGetCStringPtr(@"AppleTCON", 0x8000100u);
  if (!strcmp(a1, v12))
  {
    v24 = ramrod_copy_NVRAM_variable_from_devicetree(@"AppleTCONForceUpdate");
    if (v24)
    {
      v11 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, v24, 0x8000100u);
    }

    if (v11)
    {
      v25 = CFGetTypeID(v11);
      if (v25 == CFStringGetTypeID() && CFStringCompare(v11, @"yes", 1uLL) == kCFCompareEqualTo)
      {
        ramrod_log_msg("Setting %s=false due to nvram variable %s=yes\n", v26, v27, v28, v29, v30, v31, v32, "SkipSameVersion");
        CFDictionarySetValue(a2, @"SkipSameVersion", kCFBooleanFalse);
        CFDictionarySetValue(a2, @"RestoreInternal", kCFBooleanTrue);
      }
    }
  }

LABEL_6:
  AMSupportSafeRelease();

  return AMSupportSafeRelease();
}

void *ramrod_updater_copy_options(const char *a1, const __CFDictionary *a2, CFDictionaryRef theDict, void (*a4)(const __CFDictionary *, CFDictionaryRef, __CFDictionary *), CFErrorRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a2 && theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"PostFDRSealing");
    v16 = Value && (v14 = Value, TypeID = CFBooleanGetTypeID(), TypeID == CFGetTypeID(v14)) && v14 == kCFBooleanTrue;
    v17 = CFStringCreateWithCString(kCFAllocatorDefault, a1, 0x8000100u);
    if (v17)
    {
      v21 = v17;
      if (CFStringCompare(v17, @"AppleTypeCRetimerUARP", 0))
      {
        Mutable = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s%@", a1, @"Options");
        if (Mutable)
        {
          goto LABEL_12;
        }
      }

      else
      {
        Mutable = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@%@", @"AppleTypeCRetimer", @"Options");
        ramrod_log_msg_cf(@"%s: overriding optionsKey %@ with AppleTypeCRetimerOptions\n", "ramrod_updater_copy_options", v21);
        if (Mutable)
        {
LABEL_12:
          v95 = a4;
          cf = Mutable;
          v97 = v21;
          v26 = CFDictionaryGetValue(a2, Mutable);
          if (v26)
          {
            MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v26);
          }

          else
          {
            MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          }

          v34 = MutableCopy;
          if (!MutableCopy)
          {
            sub_D83C8(a5, Mutable, v28, v29, v30, v31, v32, v33);
            Mutable = 0;
LABEL_75:
            v21 = v97;
            goto LABEL_76;
          }

          AMSupportLogInternal();
          v35 = CFDictionaryGetValue(theDict, @"Preboot Root");
          if (v35)
          {
            v36 = v35;
            CFRetain(v35);
          }

          else
          {
            bzero(buffer, 0x400uLL);
            system_partition_device_node = ramrod_get_system_partition_device_node(buffer, 0x400uLL);
            if (!system_partition_device_node)
            {
              v36 = 0;
              if (!v16)
              {
                goto LABEL_41;
              }

              goto LABEL_23;
            }

            v36 = ramrod_copy_preboot_path(system_partition_device_node, "/mnt9", 0, 0, v44, v45, v46, v47);
            if (!v36)
            {
              if (!v16)
              {
                goto LABEL_41;
              }

              goto LABEL_23;
            }
          }

          CFDictionarySetValue(v34, @"RestoreSystemPartition", v36);
          if (!v16)
          {
            v38 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/%s/%s/%s/", v36, "/private/var", "/wireless/Library/Logs/CrashReporter/updater_output/", a1);
            goto LABEL_26;
          }

LABEL_23:
          v37 = CFDictionaryGetValue(theDict, @"Data Root");
          if (!v37)
          {
            goto LABEL_41;
          }

          v38 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/%s/%s/", v37, "/wireless/Library/Logs/CrashReporter/updater_output/", a1);
LABEL_26:
          v39 = v38;
          if (v38)
          {
            v94 = v36;
            v104 = 0u;
            v105 = 0u;
            v102 = 0u;
            v103 = 0u;
            v100 = 0u;
            v101 = 0u;
            *buffer = 0u;
            v99 = 0u;
            v40 = getpwnam("_wireless");
            if (v40)
            {
              pw_uid = v40->pw_uid;
              pw_gid = v40->pw_gid;
            }

            else
            {
              AMSupportLogInternal();
              pw_uid = 0;
              pw_gid = 0;
            }

            SystemEncoding = CFStringGetSystemEncoding();
            CStringPtr = CFStringGetCStringPtr(v39, SystemEncoding);
            if (CStringPtr || (v50 = CFStringGetSystemEncoding(), CStringPtr = buffer, CFStringGetCString(v39, buffer, 128, v50)))
            {
              if (!ramrod_create_directory_with_class(CStringPtr, 0x1EDu, pw_uid, pw_gid, -1, 1))
              {
                CFDictionarySetValue(v34, @"DebugLogPath", v39);
                goto LABEL_39;
              }
            }

            else
            {
              AMSupportLogInternal();
            }

            AMSupportLogInternal();
LABEL_39:
            v36 = v94;
            CFRelease(v39);
LABEL_42:
            AMSupportCFDictionarySetBoolean();
            v51 = CFDictionaryGetValue(theDict, @"PreflightContext");
            if (v51)
            {
              v52 = v51;
            }

            else
            {
              v52 = @"Limited";
            }

            CFDictionarySetValue(v34, @"PreflightContext", v52);
            v53 = CFDictionaryGetValue(theDict, @"BootedUpdate");
            if (v53)
            {
              CFDictionarySetValue(v34, @"BootedUpdate", v53);
            }

            should_do_legacy_restored_internal_behaviors = ramrod_should_do_legacy_restored_internal_behaviors();
            v55 = &kCFBooleanTrue;
            if (!should_do_legacy_restored_internal_behaviors)
            {
              v55 = &kCFBooleanFalse;
            }

            CFDictionarySetValue(v34, @"RestoreInternal", *v55);
            v56 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen/iBoot");
            if (v56)
            {
              v64 = v56;
              v65 = v36;
              CFProperty = IORegistryEntryCreateCFProperty(v56, @"iboot-build-variant", kCFAllocatorDefault, 0);
              v67 = CFProperty;
              if (CFProperty)
              {
                if (CFDataGetLength(CFProperty) <= 0)
                {
                  ramrod_log_msg("%s: iboot-build-variant is 0 bytes", v68, v69, v70, v71, v72, v73, v74, "_is_internal_iboot");
                  v77 = 0;
                }

                else
                {
                  BytePtr = CFDataGetBytePtr(v67);
                  Length = CFDataGetLength(v67);
                  v77 = strncmp(BytePtr, "release", Length) != 0;
                }
              }

              else
              {
                v77 = 0;
              }

              IOObjectRelease(v64);
              AMSupportSafeRelease();
              v78 = kCFBooleanFalse;
              if (v77)
              {
                v79 = kCFBooleanTrue;
              }

              else
              {
                v79 = kCFBooleanFalse;
              }

              v36 = v65;
            }

            else
            {
              ramrod_log_msg("%s: IODeviceTree:/chosen/iBoot not found", v57, v58, v59, v60, v61, v62, v63, "_is_internal_iboot");
              AMSupportSafeRelease();
              v78 = kCFBooleanFalse;
              v79 = kCFBooleanFalse;
            }

            CFDictionarySetValue(v34, @"iBootInternal", v79);
            if (CFDictionaryContainsKey(theDict, @"RestoreInternal"))
            {
              v80 = CFDictionaryGetValue(theDict, @"RestoreInternal");
              CFDictionarySetValue(v34, @"RestoreInternal", v80);
            }

            if (CFDictionaryContainsKey(theDict, @"APTicket"))
            {
              v81 = CFDictionaryGetValue(theDict, @"APTicket");
              CFDictionarySetValue(v34, @"APTicket", v81);
            }

            v82 = CFDictionaryGetValue(theDict, @"PreflightTickets");
            if (v82)
            {
              CFDictionarySetValue(v34, @"PreflightTickets", v82);
            }

            v83 = CFDictionaryGetValue(theDict, @"DeferredCommit");
            if (v83)
            {
              CFDictionarySetValue(v34, @"DeferredCommit", v83);
            }

            ramrod_update_nvram_overrides(a1, v34, v84, v85, v86, v87, v88, v89);
            if (os_parse_boot_arg_int())
            {
              CFDictionarySetValue(v34, @"SkipSameVersion", v78);
              CFDictionarySetValue(v34, @"RestoreInternal", kCFBooleanTrue);
            }

            Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            if (Mutable)
            {
              if (v95)
              {
                v95(a2, theDict, v34);
              }

              CFDictionarySetValue(Mutable, @"Options", v34);
              CFDictionarySetValue(Mutable, @"RestoreOptions", a2);
              ramrod_log_msg_cf(@"creating %sUpdater instance with options->Options=%@\n", a1, v34);
            }

            else
            {
              ramrod_create_error_cf(a5, @"RamrodErrorDomain", 6, 0, @"%s: failed to allocate options dict", v90, v91, v92, "ramrod_updater_copy_options");
            }

            CFRelease(cf);
            CFRelease(v34);
            if (v36)
            {
              CFRelease(v36);
            }

            goto LABEL_75;
          }

LABEL_41:
          AMSupportLogInternal();
          goto LABEL_42;
        }
      }

      ramrod_create_error_cf(a5, @"RamrodErrorDomain", 6, 0, @"%s: failed to allocate options key", v22, v23, v24, "ramrod_updater_copy_options");
LABEL_76:
      CFRelease(v21);
      return Mutable;
    }

    ramrod_create_error_cf(a5, @"RamrodErrorDomain", 6, 0, @"%s: failed to allocate updater string", v18, v19, v20, "ramrod_updater_copy_options");
  }

  else
  {
    ramrod_create_error_cf(a5, @"RamrodErrorDomain", 3, 0, @"%s: invalid parameters", a6, a7, a8, "ramrod_updater_copy_options");
  }

  return 0;
}

CFStringRef ramrod_copy_preboot_path(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = ramrod_ticket_copy_nsih(a3, a4, a3, a4, a5, a6, a7, a8);
  if (v9)
  {
    v17 = v9;
    if (a2)
    {
      v18 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s/%@", a2, v9);
    }

    else
    {
      v18 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", v9);
    }

    v19 = v18;
    CFRelease(v17);
  }

  else
  {
    ramrod_log_msg("failed to obtain nsih\n", v10, v11, v12, v13, v14, v15, v16, v21);
    return 0;
  }

  return v19;
}

uint64_t update_generic_firmware(const __CFString *a1, CFDictionaryRef theDict, uint64_t a3, CFErrorRef *a4)
{
  v6 = theDict;
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
  if (*(**(a3 + 16) + 8))
  {
    v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@%@.ForceTwoStage", a1, @"Options");
    if (AMSupportGetValueForKeyPathInDict() == kCFBooleanTrue)
    {
      ramrod_log_msg_cf(@"STAGE-1: Simulating two-stage flow in tethered restore due to %@", v9);
      CFDictionarySetValue(MutableCopy, @"PreflightContext", @"BootedOS");
      CFDictionarySetValue(MutableCopy, @"DeferredCommit", kCFBooleanTrue);
      if (!sub_30F48(a1, MutableCopy, a3, a4))
      {
        v10 = 0;
        goto LABEL_6;
      }

      CFDictionarySetValue(MutableCopy, @"PreflightContext", @"Limited");
      ramrod_log_msg_cf(@"STAGE-2: Simulating two-stage flow in tethered restore due to %@", v9);
      v6 = MutableCopy;
    }
  }

  v10 = sub_30F48(a1, v6, a3, a4);
LABEL_6:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v10;
}

uint64_t sub_30F48(const __CFString *a1, const __CFDictionary *a2, void *a3, CFErrorRef *a4)
{
  cf = 0;
  v130 = 0;
  v127 = 0;
  v128 = 0;
  v126 = 0;
  v8 = sub_3190C(a1);
  if (!a1 || (v16 = v8) == 0 || !*a3[2])
  {
    sub_D8488(a4, v9, v10, v11, v12, v13, v14, v15);
    v54 = 0;
    v55 = 0;
    v56 = 0;
    MutableCopy = 0;
LABEL_48:
    v57 = 0;
    v33 = 0;
LABEL_49:
    v58 = 0;
    v61 = 0;
LABEL_50:
    v62 = 1;
    if (a4)
    {
      goto LABEL_51;
    }

    goto LABEL_108;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a2);
  if (!MutableCopy)
  {
    ramrod_log_msg("options is NULL", v17, v18, v19, v20, v21, v22, v23, v123);
    v54 = 0;
    v55 = 0;
    v56 = 0;
    goto LABEL_48;
  }

  Length = CFStringGetLength(a1);
  v33 = malloc(Length + 1);
  if (!v33)
  {
    v122 = "malloc failed for updaterName";
LABEL_115:
    ramrod_log_msg(v122, v26, v27, v28, v29, v30, v31, v32, v123);
LABEL_116:
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    goto LABEL_49;
  }

  v34 = CFStringGetLength(a1);
  if (!CFStringGetCString(a1, v33, v34 + 1, 0x8000100u))
  {
    v122 = "CFStringGetCString failed";
    goto LABEL_115;
  }

  dylib = ramrod_update_get_dylib(a1);
  if (!*(a3[1] + 41) || ramrod_update_supports_preflight(a1))
  {
    if (dylib)
    {
      ramrod_log_msg("opening %s\n", v35, v36, v37, v38, v39, v40, v41, dylib);
      v43 = dlopen(dylib, 261);
      if (!v43)
      {
        sub_D844C();
        goto LABEL_45;
      }
    }

    else
    {
      v43 = 0;
    }

    if (ramrod_copy_updater_functions(v43, v33, &v130, a4, v38, v39, v40, v41))
    {
      if ((*(v130 + 1))(0, &cf) == 1)
      {
        ramrod_log_msg("%s firmware update not available for this device.\n", v44, v45, v46, v47, v48, v49, v50, v33);
        if (cf)
        {
          ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1015, cf, @"%s: %s updater aborted early returning error", v51, v52, v53, "_update_generic_firmware");
        }

        v54 = 0;
        v55 = 0;
        v56 = 0;
        v57 = 0;
        v58 = 0;
        goto LABEL_18;
      }

      Value = CFDictionaryGetValue(MutableCopy, @"PostFDRSealing");
      if (Value)
      {
        v64 = Value;
        TypeID = CFBooleanGetTypeID();
        if (TypeID == CFGetTypeID(v64) && v64 == kCFBooleanTrue)
        {
          *(a3[2] + 12) = 1;
        }
      }

      v66 = AMAuthInstallUpdaterDeviceRestoreInfo();
      v67 = a3[1];
      if (v66 && !*(v67 + 41))
      {
        *(a3[2] + 12) = 1;
        ramrod_log_msg_cf(@"Supports DeviceRestoreInfo, setting ForceRepersonalization and skipping preflightTickets query for tethered restore.");
        v67 = a3[1];
      }

      v68 = a3[2];
      if (*(v67 + 41))
      {
        *(v68 + 12) = 0;
      }

      else if (*(v68 + 12))
      {
        goto LABEL_66;
      }

      v69 = **(*a3 + 80);
      if (v69)
      {
        v56 = v69(v33);
        if (v56)
        {
          CFDictionarySetValue(MutableCopy, @"PreflightTickets", v56);
        }

LABEL_69:
        v57 = ramrod_ticket_copy();
        if (v57)
        {
          ramrod_log_msg("populating AP ticket for updater\n", v70, v71, v72, v73, v74, v75, v76, v123);
          CFDictionarySetValue(MutableCopy, @"APTicket", v57);
        }

        if (ramrod_update_twostage_enabled(a1))
        {
          ramrod_log_msg("%s Updater configured for two-stage update. DeferredCommit: %s.\n", v77, v78, v79, v80, v81, v82, v83, v33);
          if (*(a3[1] + 41))
          {
            CFDictionarySetValue(MutableCopy, @"DeferredCommit", kCFBooleanTrue);
            if (qword_1C6BD8 != -1)
            {
              sub_D8424();
            }

            if ((byte_1C6BD1 & 1) == 0 && *(v16 + 33))
            {
              ramrod_log_msg("Not in restore/ramdisk.  Stage-1 of 2 treated as bestEffort.", v84, v85, v86, v87, v88, v89, v90, v124);
              v61 = 1;
LABEL_81:
              v54 = ramrod_updater_copy_options(v33, *(*a3[2] + 8), MutableCopy, 0, &cf, v88, v89, v90);
              if (!v54)
              {
                ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1022, cf, @"%s: failed to create options for %s updater", v95, v96, v97, "_update_generic_firmware");
                v55 = 0;
                v58 = 0;
                goto LABEL_109;
              }

              ramrod_log_msg("creating %sUpdater obj\n", v91, v92, v93, v94, v95, v96, v97, v33);
              v98 = (*v130)(v54, sub_32D20, v33, &cf);
              v58 = v98;
              if (!v98)
              {
                ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1013, cf, @"%s: failed to create %s updater", v99, v100, v101, "_update_generic_firmware");
                goto LABEL_88;
              }

              if ((*(v130 + 1))(v98, &cf))
              {
LABEL_84:
                AMSupportLogInternal();
                if (!cf)
                {
                  v55 = 0;
                  goto LABEL_18;
                }

                ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1015, cf, @"%s: failed to set %s firmware", v102, v103, v104, "_update_generic_firmware");
LABEL_88:
                v55 = 0;
                goto LABEL_109;
              }

              v125 = v61;
              while (1)
              {
                if (*(a3[2] + 8) >= 0x400u)
                {
                  AMSupportLogInternal();
                  ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1016, cf, @"%s: Exceeded maximum loops for %s", v119, v120, v121, "_update_generic_firmware");
                  goto LABEL_88;
                }

                if (!(*(v130 + 2))(v58, @"queryInfo", 0, &v128, &cf))
                {
                  ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1016, cf, @"%s: failed to execute %@ on %s updater", v105, v106, v107, "_update_generic_firmware");
                  v55 = 0;
                  goto LABEL_50;
                }

                if (!v128 || (v108 = CFDictionaryGetTypeID(), v108 != CFGetTypeID(v128)))
                {
                  ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1018, cf, @"%s: out dictionary from %s updater is null or malformed", v105, v106, v107, "_update_generic_firmware");
                  goto LABEL_88;
                }

                ramrod_log_msg("copying %s updater response for loop %u\n", v109, v110, v111, v112, v105, v106, v107, v33);
                v55 = (*(*(*a3 + 80) + 8))(v33, v128, a3[2], &v126);
                if (!v55)
                {
                  ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1020, v126, @"%s: failed to copy response for %s", v113, v114, v115, "_update_generic_firmware");
                  goto LABEL_109;
                }

                AMSupportLogInternal();
                if (!(*(v130 + 2))(v58, @"performNextStage", v55, &v127, &cf))
                {
                  break;
                }

                AMSupportLogInternal();
                if (v128)
                {
                  CFRelease(v128);
                  v128 = 0;
                }

                CFRelease(v55);
                v61 = v125;
                if (v127)
                {
                  CFRelease(v127);
                  v127 = 0;
                }

                ++*(a3[2] + 8);
                if ((*(v130 + 1))(v58, &cf))
                {
                  goto LABEL_84;
                }
              }

              ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1017, cf, @"%s: failed to execute %@ on %s updater", v116, v117, v118, "_update_generic_firmware");
              v62 = 1;
              v61 = v125;
              if (a4)
              {
                goto LABEL_51;
              }

LABEL_108:
              if (v62)
              {
                goto LABEL_109;
              }

LABEL_18:
              v59 = 1;
              goto LABEL_19;
            }
          }

          else
          {
            CFDictionarySetValue(MutableCopy, @"DeferredCommit", kCFBooleanFalse);
          }
        }

        else
        {
          ramrod_log_msg("%s Updater: Legacy / single-stage updater.\n", v77, v78, v79, v80, v81, v82, v83, v33);
        }

        v61 = 0;
        goto LABEL_81;
      }

LABEL_66:
      v56 = 0;
      goto LABEL_69;
    }

    goto LABEL_116;
  }

  ramrod_log_msg("%s firmware not configured for preflight, skipping this update.\n", v35, v36, v37, v38, v39, v40, v41, v33);
LABEL_45:
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v61 = 0;
  v62 = 0;
  if (!a4)
  {
    goto LABEL_108;
  }

LABEL_51:
  if (!*a4)
  {
    goto LABEL_108;
  }

  AMSupportLogInternal();
  if ((v62 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_109:
  AMSupportLogInternal();
  if (v61)
  {
    AMSupportLogInternal();
    goto LABEL_18;
  }

  v59 = 0;
LABEL_19:
  if (v130)
  {
    free(v130);
    v130 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  if (v128)
  {
    CFRelease(v128);
    v128 = 0;
  }

  if (v55)
  {
    CFRelease(v55);
  }

  if (v127)
  {
    CFRelease(v127);
    v127 = 0;
  }

  if (v126)
  {
    CFRelease(v126);
    v126 = 0;
  }

  if (v56)
  {
    CFRelease(v56);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  if (v33)
  {
    free(v33);
  }

  return v59;
}

BOOL ramrod_update_supports_preflight(const __CFString *a1)
{
  if (!a1)
  {
    sub_D84C4();
    return 1;
  }

  v1 = sub_3190C(a1);
  if (!v1)
  {
    AMSupportLogInternal();
    return 1;
  }

  v2 = v1;
  v3 = v1[2];
  return v3 && v3(0) && *(v2 + 34);
}

CFStringRef *sub_3190C(const __CFString *a1)
{
  sub_4325C();
  if (a1)
  {
    v2 = off_1C05E8;
    v3 = 14;
    while (*v2)
    {
      if (CFStringCompare(a1, *v2, 0) == kCFCompareEqualTo)
      {
        return v2;
      }

      v2 += 6;
      if (!--v3)
      {
        return 0;
      }
    }
  }

  sub_D84D8();
  return 0;
}

uint64_t ramrod_update_needs_ap_receipt(const __CFString *a1)
{
  if (a1)
  {
    sub_4325C();
    v2 = off_1C05E8;
    v3 = 14;
    while (*v2)
    {
      if (CFStringCompare(a1, *v2, 0) == kCFCompareEqualTo)
      {
        return *(v2 + 35);
      }

      v2 += 6;
      if (!--v3)
      {
        return 0;
      }
    }

    sub_D84E8();
  }

  else
  {
    sub_D84FC();
  }

  return 0;
}

CFStringRef ramrod_update_key_to_scrub(const __CFString *a1)
{
  if (a1)
  {
    v1 = sub_3190C(a1);
    if (v1)
    {
      return v1[5];
    }

    AMSupportLogInternal();
  }

  else
  {
    sub_D8510();
  }

  return 0;
}

CFStringRef ramrod_update_get_dylib(const __CFString *a1)
{
  if (a1)
  {
    v1 = sub_3190C(a1);
    if (v1)
    {
      return v1[3];
    }

    AMSupportLogInternal();
  }

  else
  {
    sub_D8524();
  }

  return 0;
}

uint64_t ramrod_update_preflight_looping(const __CFString *a1)
{
  if (a1)
  {
    v1 = sub_3190C(a1);
    if (v1)
    {
      return *(v1 + 36);
    }

    AMSupportLogInternal();
  }

  else
  {
    sub_D8538();
  }

  return 0;
}

__CFArray *ramrod_update_copy_all_names()
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    sub_4325C();
    v1 = 0;
    while (1)
    {
      v2 = off_1C05E8[v1];
      if (!v2)
      {
        break;
      }

      CFArrayAppendValue(Mutable, v2);
      v1 += 6;
      if (v1 == 84)
      {
        return Mutable;
      }
    }

    sub_D854C(Mutable);
    return 0;
  }

  else
  {
    sub_D8598();
  }

  return Mutable;
}

__CFArray *ramrod_update_copy_booted_updater_names()
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    sub_4325C();
    v1 = off_1C05E8;
    v2 = 14;
    while (*v1)
    {
      v3 = v1[2];
      if (v3 && (v3)(1))
      {
        CFArrayAppendValue(Mutable, *v1);
      }

      v1 += 6;
      if (!--v2)
      {
        return Mutable;
      }
    }

    sub_D85AC(Mutable);
    return 0;
  }

  else
  {
    sub_D85F8();
  }

  return Mutable;
}

uint64_t ramrod_update_should_write_deviceinfo(const __CFString *a1)
{
  if (a1)
  {
    v1 = sub_3190C(a1);
    if (v1)
    {
      return *(v1 + 32);
    }

    AMSupportLogInternal();
  }

  else
  {
    sub_D860C();
  }

  return 0;
}

CFDictionaryRef ramrod_update_copy_ap_parameters_generating_nonces(CFDictionaryRef theDict)
{
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v9 = MutableCopy;
  if (MutableCopy)
  {
    CFDictionarySetValue(MutableCopy, @"GenerateNonces", kCFBooleanTrue);
    updated = ramrod_update_copy_ap_parameters(v9);
    CFRelease(v9);
    return updated;
  }

  else
  {
    ramrod_log_msg("Failed to allocate ap options dictionary.\n", v2, v3, v4, v5, v6, v7, v8, v12);
    return 0;
  }
}

CFDictionaryRef ramrod_update_copy_ap_parameters(const __CFDictionary *a1)
{
  BOOLean_option = get_BOOLean_option(a1, @"GenerateNonces", 0);
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v3 = sub_31F98(@"esdm-fuses");
    if (v3)
    {
      CFDictionarySetValue(Mutable, kAMAuthInstallApParameterSiKA, v3);
    }

    v4 = sub_31F98(@"chip-epoch");
    if (v4)
    {
      CFDictionarySetValue(Mutable, kAMAuthInstallApParameterCertificateEpoch, v4);
    }

    if (BOOLean_option && _ramrod_device_has_sandcat())
    {
      v28 = 2;
      valuePtr = 0;
      cf = 0;
      value = 0;
      if (ramrod_generate_apslot_copy_nonce(&valuePtr, &value))
      {
        v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
        if (v12)
        {
          v13 = v12;
          CFDictionarySetValue(Mutable, kAMAuthInstallApParameterApNonceSlotID, v12);
          CFRelease(v13);
        }

        if (value)
        {
          CFDictionarySetValue(Mutable, kAMAuthInstallApParameterApNonce, value);
          CFRelease(value);
        }
      }

      else
      {
        ramrod_log_msg("unable to read the AP slot id will not set.\n", v5, v6, v7, v8, v9, v10, v11, v25);
      }

      if (ramrod_generate_sepslot_copy_nonce(&v28, &cf))
      {
        v21 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v28);
        if (v21)
        {
          v22 = v21;
          CFDictionarySetValue(Mutable, kAMAuthInstallApParameterSepNonceSlotID, v21);
          CFRelease(v22);
        }

        if (cf)
        {
          CFDictionarySetValue(Mutable, kAMAuthInstallApParameterSepNonce, cf);
          CFRelease(cf);
        }
      }

      else
      {
        ramrod_log_msg("unable to read the SEP slot id will not set.\n", v14, v15, v16, v17, v18, v19, v20, v25);
      }
    }

    Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, Mutable);
  }

  else
  {
    sub_D8620();
    Copy = 0;
  }

  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return Copy;
}

CFNumberRef sub_31F98(const __CFString *a1)
{
  v2 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen");
  if (v2)
  {
    v10 = v2;
    CFProperty = IORegistryEntryCreateCFProperty(v2, a1, kCFAllocatorDefault, 0);
    if (!CFProperty)
    {
      ramrod_log_msg_cf(@"unable to lookup %@ property\n", a1);
      v15 = 0;
LABEL_11:
      IOObjectRelease(v10);
      return v15;
    }

    v12 = CFProperty;
    v13 = CFGetTypeID(CFProperty);
    if (v13 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(v12);
      v15 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, BytePtr);
      if (v15)
      {
LABEL_10:
        CFRelease(v12);
        goto LABEL_11;
      }

      ramrod_log_msg_cf(@"could not create CFNumber for %@\n", a1);
    }

    else
    {
      ramrod_log_msg_cf(@"%@ property is not a CFData\n", a1);
    }

    v15 = 0;
    goto LABEL_10;
  }

  ramrod_log_msg("unable to find 'chosen' registry entry\n", v3, v4, v5, v6, v7, v8, v9, v17);
  return 0;
}

CFMutableDictionaryRef ramrod_update_copy_deviceinfo_with_options(const __CFDictionary *a1, CFErrorRef *a2)
{
  v125 = 0;
  v126[0] = 0;
  v124 = 0;
  sub_4325C();
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    sub_D8634(a2, v3, v4, v5, v6, v7, v8, v9);
LABEL_146:
    v105 = 1;
    goto LABEL_119;
  }

  v18 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v18)
  {
    sub_D8864(a2, v11, v12, v13, v14, v15, v16, v17);
    goto LABEL_146;
  }

  v26 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v26)
  {
    sub_D8828(a2, v19, v20, v21, v22, v23, v24, v25);
    goto LABEL_146;
  }

  v34 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v34)
  {
    sub_D87EC(a2, v27, v28, v29, v30, v31, v32, v33);
    goto LABEL_146;
  }

  if (!a1)
  {
    sub_D87A4(a2, v27, v28, v29, v30, v31, v32, v33);
    goto LABEL_146;
  }

  theDict = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!theDict)
  {
    sub_D8790();
    goto LABEL_146;
  }

  v35 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v35)
  {
    sub_D877C();
    goto LABEL_146;
  }

  v120 = a1;
  v36 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v117 = v35;
  if (!v36)
  {
    sub_D8768();
    goto LABEL_146;
  }

  v37 = v36;
  CFDictionarySetValue(v36, @"CreateFilesystemPartitions", kCFBooleanFalse);
  CFDictionarySetValue(theDict, @"RestoreOptions", v37);
  if (CFDictionaryContainsKey(a1, @"PreflightRequired"))
  {
    Value = CFDictionaryGetValue(a1, @"PreflightRequired");
    CFDictionarySetValue(v35, @"PreflightRequired", Value);
  }

  if (CFDictionaryContainsKey(a1, @"BootedUpdate"))
  {
    v39 = CFDictionaryGetValue(a1, @"BootedUpdate");
    CFDictionarySetValue(v35, @"BootedUpdate", v39);
    v122 = v39 == kCFBooleanTrue;
  }

  else
  {
    v122 = 0;
  }

  v113 = Mutable;
  v114 = v26;
  v115 = v18;
  v119 = v34;
  if (CFDictionaryContainsKey(a1, @"PreflightContext"))
  {
    v43 = CFDictionaryGetValue(a1, @"PreflightContext");
    CFDictionarySetValue(v35, @"PreflightContext", v43);
    v44 = CFStringCompare(v43, @"Limited", 0) != kCFCompareEqualTo;
  }

  else
  {
    v44 = 1;
  }

  v45 = a1;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  MutableCopy = 0;
  if (v122)
  {
    v44 = 1;
  }

  v123 = v44;
  v51 = theDict;
  while (1)
  {
    if (v47)
    {
      CFRelease(v47);
    }

    if (v125)
    {
      CFRelease(v125);
      v125 = 0;
    }

    if (v48)
    {
      CFRelease(v48);
    }

    if (v49)
    {
      CFRelease(v49);
    }

    if (v126[0])
    {
      CFRelease(v126[0]);
      v126[0] = 0;
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (v124)
    {
      free(v124);
      v124 = 0;
    }

    v52 = &off_1C05E8[6 * v46];
    if (!*v52)
    {
      v108 = v126[0];
      v109 = @"%s: Updater Name is NULL at index %d";
LABEL_130:
      ramrod_create_error_cf(a2, @"RamrodErrorDomain", 6, v108, v109, v40, v41, v42, "ramrod_update_copy_deviceinfo_with_options");
      goto LABEL_136;
    }

    ramrod_log_msg_cf(@"Preflight loop %d for updater %@..", ++v46, *v52);
    v53 = v52[2];
    if (!v53)
    {
      goto LABEL_47;
    }

    if (!v123)
    {
      if ((v53)(1))
      {
        v54 = 0;
        goto LABEL_42;
      }

      v53 = v52[2];
    }

    if (!(v53)(v122))
    {
LABEL_47:
      ramrod_log_msg_cf(@"Updater %@ not supported on this device..", *v52, v110);
LABEL_49:
      v47 = 0;
      v48 = 0;
      v49 = 0;
      MutableCopy = 0;
      goto LABEL_67;
    }

    v54 = 1;
LABEL_42:
    if (CFDictionaryGetValue(v45, *v52) == kCFBooleanFalse)
    {
      ramrod_log_msg_cf(@"Updater %@ should be skipped for %s..", *v52, "ramrod_update_copy_deviceinfo_with_options");
      goto LABEL_49;
    }

    CStringPtr = CFStringGetCStringPtr(*v52, 0x8000100u);
    if (!CStringPtr)
    {
      v108 = v126[0];
      v109 = @"%s: failed convert updaterName %@";
      goto LABEL_130;
    }

    v56 = CStringPtr;
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v35);
    if (!MutableCopy)
    {
      ramrod_create_error_cf(a2, @"RamrodErrorDomain", 6, v126[0], @"%s: Failed to copy subOptions for %s", v57, v58, v59, "ramrod_update_copy_deviceinfo_with_options");
      goto LABEL_136;
    }

    CFDictionarySetValue(v51, @"Options", MutableCopy);
    ramrod_update_nvram_overrides(v56, MutableCopy, v60, v61, v62, v63, v64, v65);
    if (ramrod_update_twostage_enabled(*v52))
    {
      ramrod_log_msg("%s Updater configured for two-stage update. DeferredCommit: YES.\n", v66, v67, v68, v69, v70, v71, v72, v56);
      CFDictionarySetValue(MutableCopy, @"DeferredCommit", kCFBooleanTrue);
    }

    else
    {
      ramrod_log_msg("%s Updater: Legacy / single-stage updater.\n", v66, v67, v68, v69, v70, v71, v72, v56);
    }

    if (os_parse_boot_arg_int())
    {
      CFDictionarySetValue(MutableCopy, @"SkipSameVersion", kCFBooleanFalse);
      CFDictionarySetValue(MutableCopy, @"RestoreInternal", kCFBooleanTrue);
    }

    if (*(v52 + 36))
    {
      v48 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      if (!v48)
      {
        ramrod_create_error_cf(a2, @"RamrodErrorDomain", 6, v126[0], @"%s: Failed to create queryResults array for %s", v73, v74, v75, "ramrod_update_copy_deviceinfo_with_options");
        goto LABEL_136;
      }

      if ((v54 & 1) == 0)
      {
LABEL_56:
        ramrod_log_msg_cf(@"overriding updater context to BootedOS for %sUpdater", v56);
        CFDictionarySetValue(MutableCopy, @"PreflightContext", @"BootedOS");
      }
    }

    else
    {
      v48 = 0;
      if ((v54 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    v76 = dlopen(v52[3], 261);
    if (!v76)
    {
      v111 = dlerror();
      ramrod_log_msg_cf(@"Failed to open updater library on device that should have %s: %s", v56, v111);
      goto LABEL_65;
    }

    if (!ramrod_copy_updater_functions(v76, v56, &v124, a2, v77, v78, v79, v80) || (v81 = (v124[1])(0, v126), v126[0]))
    {
LABEL_135:
      AMSupportLogInternal();
      goto LABEL_136;
    }

    if (v81)
    {
      ramrod_log_msg_cf(@"Updater %s returned isDone(NULL)=true (ie: module should skip), continuing.", v56, v110);
LABEL_65:
      v49 = 0;
      v47 = 0;
      goto LABEL_66;
    }

    ramrod_log_msg_cf(@"creating %sUpdater obj", v56);
    v82 = (*v124)(v51, sub_32D20, v56, v126);
    v47 = v82;
    if (!v82)
    {
      break;
    }

    v83 = (v124[1])(v82, v126);
    if (v126[0])
    {
      goto LABEL_135;
    }

    if (v83)
    {
      ramrod_log_msg_cf(@"Updater %s returned isDone(obj)=true (ie: module should skip), continuing.", v56);
      v49 = 0;
      goto LABEL_66;
    }

    v84 = 0;
    v116 = 0;
LABEL_74:
    if (v84 <= 1024)
    {
      v85 = 1024;
    }

    else
    {
      v85 = v84;
    }

    v86 = v85 - v84++ + 1;
    do
    {
      if (v125)
      {
        CFRelease(v125);
        v125 = 0;
      }

      if (!--v86)
      {
        sub_D86EC();
        goto LABEL_136;
      }

      if (v48)
      {
        ramrod_log_msg_cf(@"Calling %sUpdater fp_isDone", v56);
        v87 = (v124[1])(v47, v126);
        if (v126[0])
        {
          goto LABEL_135;
        }

        if (v87)
        {
          break;
        }
      }

      ramrod_log_msg_cf(@"Calling %sUpdater fp_ExecCmd", v56, v110);
      if ((v124[2])(v47, @"queryInfo", 0, &v125, v126))
      {
        if (v125)
        {
          TypeID = CFDictionaryGetTypeID();
          v51 = theDict;
          if (TypeID == CFGetTypeID(v125) && CFDictionaryGetValue(v120, @"PreflightRequired") == kCFBooleanFalse)
          {
            v116 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v125);
            if (!v116)
            {
              goto LABEL_136;
            }

            v99 = v52[5];
            if (v99)
            {
              key = v52[5];
              if (CFDictionaryContainsKey(v116, v99))
              {
                AMSupportLogInternal();
                CFDictionaryRemoveValue(v116, key);
                CFRelease(v125);
                v125 = v116;
                v116 = 0;
              }
            }
          }
        }

        else
        {
          v51 = theDict;
        }

        v100 = v125;
        if (v48)
        {
          CFArrayAppendValue(v48, v125);
          v100 = v125;
        }

        if (!v100 || v126[0])
        {
          if (v100 | v126[0])
          {
            v103 = "NULL";
            if (v100)
            {
              v103 = "NOT-NULL";
            }

            ramrod_log_msg_cf(@"Updater %s QueryInfo succeeded, but bad results. Results=%s, Error=%@", v56, v103, v126[0]);
            if (*(v52 + 34))
            {
              ramrod_create_error_cf(a2, @"RamrodErrorDomain", 1016, v126[0], @"%s: Preflight QueryInfo succeeded, but improper results on %s", v40, v41, v42, "ramrod_update_copy_deviceinfo_with_options");
              goto LABEL_136;
            }
          }

          else
          {
            ramrod_log_msg_cf(@"Updater %s returned no personalization info (ie: module should skip), continuing.", v56);
          }

          if (!v48)
          {
LABEL_117:
            v49 = v116;
            v35 = v117;
            goto LABEL_66;
          }
        }

        else
        {
          ramrod_log_msg_cf(@"Populated deviceinfo for %s, continuing.", v56);
          if (v48)
          {
            v101 = v48;
          }

          else
          {
            v101 = v125;
          }

          if (*(v52 + 34))
          {
            v102 = v115;
          }

          else
          {
            v102 = v114;
          }

          CFDictionarySetValue(v102, *v52, v101);
          if (!v48)
          {
            goto LABEL_117;
          }
        }

        goto LABEL_74;
      }

      AMSupportLogInternal();
      if (*(v52 + 33) == 1)
      {
        ramrod_log_msg("%s updater failed but not reporting error since it is best effort\n", v88, v89, v90, v91, v92, v93, v94, v56);
      }

      else
      {
        CFDictionarySetValue(v119, *v52, v52[1]);
        v110 = v56;
        ramrod_create_error_cf(a2, @"RamrodErrorDomain", 1016, v126[0], @"%s: Preflight QueryInfo failed on %s", v95, v96, v97, "ramrod_update_copy_deviceinfo_with_options");
      }

      ++v84;
    }

    while (v48);
    v35 = v117;
    v51 = theDict;
    v49 = v116;
LABEL_66:
    v45 = v120;
LABEL_67:
    if (v46 == 14)
    {
      updated = ramrod_update_copy_ap_parameters(v45);
      Mutable = v113;
      CFDictionaryAddValue(v113, @"DeviceInfo", v115);
      CFDictionaryAddValue(v113, @"DeviceInfoDisabled", v114);
      CFDictionaryAddValue(v113, @"DeviceInfoFailures", v119);
      CFDictionaryAddValue(v113, @"ApParameters", updated);
      v105 = 0;
      goto LABEL_119;
    }
  }

  sub_D8670();
LABEL_136:
  v105 = 1;
  Mutable = v113;
LABEL_119:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  if (v124)
  {
    free(v124);
    v124 = 0;
  }

  v106 = v105 ^ 1;
  if (!Mutable)
  {
    v106 = 1;
  }

  if ((v106 & 1) == 0)
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}